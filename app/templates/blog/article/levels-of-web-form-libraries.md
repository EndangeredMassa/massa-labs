<ArticleHeader @article={{this.model}} />

This is a distillation and iteration on discussions happening in the Ember.js community around how web form libraries should work. Examples use Ember.js, but the concepts apply generally.


## API Requirements

There appears to be a set of guidelines and requirements that we're looking for. These are based on a lot of experience (across many people) writing forms, getting them wrong, and fixing them over time.

These requirements describe things that the form solution must support. That doesn't mean the form solution must implement the functionality directly--just that a developer can build a form with the form solution that has that functionality. For example, the form solution doesn't need built-in validations, but it must allow a developer to build a form that has validations.

**Accessibility**: The solution MUST support accessible form building as much as possible.

**Abstraction**: The solution MUST provide multiple layers of abstraction that are built on top of each other. This will allow a developer to drop down to a lower level when the higher level is too specific in its solution.

**Fields**: The solution MUST support all field types. It MUST also support custom field types by exposing the primitives required to integrate that with the solution.

**Data**: The form data MUST support scalar and vector values being bound to form controls. The interface must accept an Ember Data model, POJO, or ChangeSet.

**Validations**: The solution must support executing any validation library (although it's OK to force a common interface) as well as rendering validation errors.

**Errors**: The solution MUST support rendering of field-level and form-level errors.

**Form Submission State**: The solution MAY support the rendering of elements based on the current submission state of the form. This may use ember-concurrency.


## Form API

The form solution itself will likely include a form component.

```xml
<Form @onSubmit={{this.mySubmit}} @data={{this.someChangeset}} @validator={{this.someValidator}} as |form|>
  <!-- ... -->
</Form>
```

`@onSubmit`: the function to call when the submit action is sent to the form. The arguments passed to it would include the modified `@data` property.

`@data`: the form data to be operated on. This will be mutated.

`@validator`: a function that accepts the current `@data` and returns a validation error object.

`|form|`: yielding out some helpers, component modifiers, and/or other components.


Beyond that, there's a lot to discuss.

What follows is a series of increasing levels of abstraction over forms and example APIs at each level. The intent here is to understand the potential levels of abstraction. In a solution to this problem, not all levels of abstraction would be supported. Part of this effort would be to decide which levels are worth shipping.


### Layer 0: Ember Core [no components]

This is an example of what is often done with current Ember.

```xml
<form onsubmit={{this.handleSubmit}}>
  <label for="firstName">First name</label>
  <input id="firstName" type="text" onblur={{ action (mut this.firstName) value="target.value" }}>

  <label for="lastName">Last name</label>
  <input id="lastName" type="text" onblur={{ action (mut this.lastName) value="target.value" }}>

  <label for="email">Email</label>
  {{#if this.emailError}}
    <div class="error">
      {{this.emailError}}
    </div>
  {{/if}}
  <input id="email" type="email" onblur={{ this.validateEmail }}>

  <button>Submit</button>
</form>
```


### Layer 1: Global Wiring [no components]

This is an example of what could be done with general component modifiers and helpers provided by an addon.

We could use a component modifier like `register` that will two-way databind a form field to a property in context so that we can retrieve the value on submit. It can also smooth over the `target` properties of various form elements.

The `validate` and `get-errors` modifiers could help us wire up validations.

```xml
<form onsubmit={{this.handleSubmit}}>
  <label>
    First name
    <input type="text" {{register this.firstName}}>
  </label>

  <label>
    Last name
    <input type="text" {{register this.lastName}}>
  </label>

  <label for="email">Email</label>
  {{#if (get-errors 'email')}}
    <div class="error">
      {{(get-errors 'email')}}
    </div>
  {{/if}}
  <input id="email" type="email" {{validate this.Email type='email'}}>

  <button>Submit</button>
</form>
```



### Layer 2: Field Wiring [form component]

This solution provides a Form component that manages state and responds to submission and validation events.

```xml
<Form @onSubmit={{this.saveRecord}} @data={{this.record}} @validator={{this.someValidator}} as |form|>
  {{#form.helpersFor 'firstName' as |fieldHelpers|}}
    <label for={{fieldHelpers.fieldId}}>First name</label>
    <input
      id={{fieldHelpers.fieldId}}
      value={{fieldHelpers.value}}
      oninput={{fieldHelpers.onChange}}
    >
  {{/form.helpersFor}}
  
  {{#form.helpersFor 'lastName' as |fieldHelpers|}}
    <label for={{fieldHelpers.fieldId}}>Last name</label>
    <input
      id={{fieldHelpers.fieldId}}
      value={{fieldHelpers.value}}
      oninput={{fieldHelpers.onChange}}
    >
  {{/form.helpersFor}}

  {{#form.helpersFor 'email' as |fieldHelpers|}}
    {{#if fieldHelpers.hasError}}
      {{fieldHelpers.error}}
    {{/if}}

    <label for={{fieldHelpers.fieldId}}>Email</label>
    <input
      id={{fieldHelpers.fieldId}}
      value={{fieldHelpers.value}}
      oninput={{fieldHelpers.onChange}}
    >
  {{/form.helpersFor}}
  
  <button>Submit</button>
</Form>
```


### Layer 3: Form Wiring [form component]

This solution focuses on a single form component that does enough of the work for you without getting in the way of actual form (technical and aesthetic) design.


```xml
<Form @onSubmit={{this.mySubmit}} @data={{this.someChangeset}} @validator={{this.someValidator}} as |form|>
  <label>
    First name
    <input type="text" {{form.register 'firstName'}}>
  </label>
  <label>
    Last name
    <input type="text" {{form.register 'firstName'}}>
  </label>
  <label>
    Email
    <input type="email" {{form.register 'email'}}>
  </label>
  
  {{#if form.isInvalid}}
    {{#each form.errors as |error|}}
      <div class="error">
        {{error}}
      </div>
    {{/each}}
  {{/if}}
  
  <button>Submit</button>
</Form>
```

The `register` component modifier knows how to handle values for various form fields, how to populate a data structure with scalar and vector values, and already has access to the `@data`. It must be called on all form fields. It assumes you want to validate and change data on blur.





### Layer 4: Field Building [form + contextual components]

Rather than Compound Components, this version only provides a 1:1 mapping of original HTML form fields to a custom component pre-bound to form data and with events to validate and update data.

```xml
<Form @onSubmit={{this.mySubmit}} @data={{this.someChangeset}} @validator={{this.someValidator}} as |form|>
  <label>
    First name
    <form.errorFor @value="firstName" />
    <form.Input @value="firstName" />
  </label>
  
  <form.labelFor @value="lastName">
    Last name
  </label>
  <form.errorFor @value="lastName" />
  <form.Input @value="lastName" />
  
  <button>Submit</button>
</Form>
```

The labels can use the `value` as a way to generate the proper id to point to the form element. This does mean that no two form elements can be bound to the same value, which seems like a reasonable limitation of this approach.





### Layer 5: Form Building [form + contextual components]

This solution focuses on doing as much for the dev as is reasonable.

```xml
<Form @onSubmit={{this.mySubmit}} @data={{this.someChangeset}} @validator={{this.someValidator}} as |form|>
  <form.Input @label="first name" @value="firstName">
  <form.Input @label="last name" @value="lastName">
  
  <button>Submit</button>
</Form>
```


How it Works:

- fields are included with generated IDs for generated labels to point to when the `@label` attribute is provided
- values are one-way bound to field values
- the validations for a given field happen on blur of that field
- the validations for the whole form are run pre-submit, preventing `@onSubmit` from being called if invalid
- the changed values are submitted to the `@onSubmit` action


This is a high level of abstraction over html forms. If the dev needs to do something that this interface does not support, there needs to be an escape hatch down to a lower level. This could be accomplished by having the Compound Components yield out their children components so that the dev can arrange and modify them individually. This is useful for changing the relative position of elements in the DOM and styling individual elements.

```xml
<Form @onSubmit={{this.mySubmit}} @data={{this.someChangeset}} @validator={{this.someValidator}} as |form|>
  <form.Input @value="firstName" as |i|>
    <i.Label class="mb-5">
      First name
    </i.Label>
    <i.Input class="border-red" />
  </form.Input>
  
  <form.Input @value="lastName" as |i|>
    <i.Label class="mb-5">
      Last name
    </i.Label>
    <i.Input class="border-red" />
  </form.Input>
  
  <button>Submit</button>
</Form>
```



## Shipping Layers of Abstraction

You'll notice the 6 layers of abstraction have some obvious grouping, especially after the two basic cases of layers 0 and 1.

Layers 2 and 4 are field focused whereas layers 3 and 5 are form focused. Layer 5 has an escape hatch at layer 4 and layer 3 has an escape hatch at layer 2.

If a dev needed to drop down a layer of abstraction, the could easily do so from 5 to 4 and 3 to 2 without rewriting their forms. If they need to drop further, however, they'd have to rewrite all form fields to use the lower level.

I think this means we have 3 real options for shipping a form solution as an addon. It's one of:

- Shipping layers 2 and 3
- Shipping layers 4 and 5
- Shipping layers 2, 3, 4 and 5 where they all work together

The final option is more complicated, but it would give a lot of flexibility to devs. 



## Field States

Fields can be in various states. A form solution should support rendering decisions based on all of them. They can be:

- cleanliness: pristine vs. dirty
- validity: validating vs. valid vs. invalid (with errors)

Note that validation can by asynchronous over an indeterminate period of time. Being able to render an indication of that state is important for the form.



## Form States

Forms can be in various states. A form solution should support rendering decisions based on all of them. They can be:

- cleanliness: pristine vs. dirty
- validity: validating vs. valid vs. invalid (with errors)
- submission: unsubmitted vs. submitting vs. succeeded vs. failed (with errors)

Note that validation and form submission can by asynchronous over an indeterminate period of time. Being able to render an indication of those states is important for the form.




## Validation

There are 4 types of validations. Each one can happen synchronously or asynchronously, against known data or retrieved data from memory, from local storage, a server, a browser permission request, or wherever. They can also happen at different times, such as field blur, field change, form submit, or other events.

**Partial Type Validation**: Validates a field value's type without checking for completness. Example: an email field with current value "sean@abc" could be marked valid because it is valid so far.

**Complete Type Validation**: Validates a field value's type completely. Example: an email field with value "sean@example.com" could be marked valid.

**Field Data Validation**: Validates a field value after it is complete and the type has been validated within the context of the form.

**Form Data Validation**: Validates an entire form's submitted data on submission of the form. Example: two fields have mutually exclusive values and the form is therefore marked invalid.

How exactly that validator should work as it integrates with the form is still worth discussing.



### Normalization

Sometimes an dev wants to normalize data after it has been entered. The common case is to standardize the format for a phone number. Normalization is really just a validation that, if valid, may also want to modify the value. Given this, the form solution should allow validations to mutate the values they are validating. This leaves the actual details of normalization up to the validation library that is plugged in.


## Submission

Form submission should always go through the submit event, often triggered by a button, an input of type "submit", or hitting Enter while inside a form field. The changed values from the form fields should be provided to the `@onSubmit` handler for processing.

The submission itself is quite often asynchronous. Forms should be able to make rendering decisions based on submission states.

**Unsubmitted**: This is the initial state of a form. The submit event has never been fired.

**Submitting**: The submission is asynchronous and currently in progress.

**Succeeded**: The submission succeeded without error.

**Failed**: The submission failed with errors.


```xml
<Form @onSubmit={{this.saveRecord}} @data={{this.record}} as |form|>
  <label>
    First name
    <input type="text" {{form.register 'firstName' validateOn='blur'}} >
  </label>
  <label>
    Last name
    <input type="text">
  </label>
  
  {{#if form.isSubmitting}}
    <Loading />
  {{/if}}
  
  <submit>Submit</submit>
</Form>
```


## Linting Enforcement
We may be able to provide linting rules along with an addon that provides the Form component and related API surface (helpers, modifiers, and other components). These linting rules could make it easier to enforce consistent API usage where run-time detection would be a lot harder and less convenient.

We could then enforce the `form.register` requirement with a linting rule.

```xml
<Form @onSubmit={{this.saveRecord}} @data={{this.record}} as |form|>
  <label>
    First name
    <input type="text" {{form.register 'firstName' validateOn='blur'}} >
  </label>
  <label>
    Last name
    <input type="text">
  </label>
</Form>
```

The linter would fail on the `input` for last name saying that `register` must be called there.


## Open Questions

Obviously, everything above is still being discussed. Below are specific questions that definitely need more discussion.

- Can you yield helpers or modifiers?
- For the layers of abstraction that manage it, should `onSubmit` be called only after validations have shown the form to be valid?
- Can we reasonably ship a linting rule and automatically modify the template linting config to include the new rule?


## Special Thanks

As I said at the top, this is a summarization and expansion on an ongoing conversation in the Ember community. These ideas should not be wholly attributed to me. You'll find many of them came from the following people, and probably others, in no particular order:

- [Preston Sego](https://twitter.com/nullvoxpopuli)
- [Trek Glowacki](https://mastodon.social/@trek)
- [Chris Krycho](https://v4.chriskrycho.com/)
- [Frédéric Soumaré](https://github.com/hakilebara)
- [Ben Demboski](https://twitter.com/bendemboski)
- [Ralph Mack](https://twitter.com/Lupestro)
- [Thomas Gossmann](https://github.com/gossi)
- [Howie Bollinger](https://github.com/dbollinger)
- [Chris Thoburn](https://twitter.com/RunSpired)
- Garrick

Thanks!
