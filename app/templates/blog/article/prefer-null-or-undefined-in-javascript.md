<ArticleHeader @article={{this.model}} />

JavaScript has two empty values where most languages have one and some have zero: `null` and `undefined`.

There certainly can be uses for more than one (like unknown empty vs known empty) and accommodations for this (like type coercion of falsey values). However, it adds complexity to learning the base languages, runtimes, and libraries.

In an attempt to mitigate the complexity, I’ve long preferred to use `null` because it follows a “known empty” convention, which is more explicit. After digging into this in much more detail, my position has changed.

In the context of setting a linting requirement for a project, we have a few options:

1. Do Nothing: anyone can use `null` or `undefined` as they see fit
2. Prefer `null`: promote the use of `null` everywhere possible, but do not require it
3. Prefer `undefined`: promote the use of `undefined` everywhere possible, but do not require it
4. Require `null`: lint away all uses of `undefined`; work around any issues
5. Require `undefined`: lint away all uses of `null`; work around any issues

### In Theory

I think it's fair to say that the language didn't need these two similar concepts. We can certainly find specific cases where the distinction between them is *meaningful*, but in the end, I don't think it's often very *useful*. However, what's done is done and we need to find a path forward.

I found [octogonz's reasoning](https://github.com/eslint/eslint/issues/12177) to be the most concise and compelling:

> Most programming languages have a "null" or "nil" value that functions...
> 
> 1. as the initial value for an uninitialized variable; and
> 2. as the value of x.y or x["y"] when x has no such key; and
> 3. as a special token that developers can assign to indicate an unknown or empty state.
> 
> In JavaScript, the undefined value fulfills roles (1), (2) and (3). JavaScript's null value is a redundant secondary token that can only be used for (3)
> 

[sindresorhus's argument](https://github.com/sindresorhus/meta/discussions/7) also mentioned that default parameters only work with `undefined`:

```
function multiply(a = 1, b = 2) {
  return a * b;
}

console.log(multiply(undefined, 3));
// 3
```

This had me convinced that in theory, `undefined` is the true null-style value of the language and `null` is the weird one out.

I think this is the theoretical ideal decision is to "(5) Require `undefined`".

### In Practice

In practice, however, there are problems. Removing `null` means:

- `JSON.stringify`/`JSON.parse` does not have a clear way to serialize/deserialize properties because `undefined` properties are not serialized
- API endpoints that use JSON payloads for PATCH can't use `undefined` for the same reasons
- various runtime interop requires managing `null` values, which have to be converted to `undefined`
  - DOM API
  - Node.js core library
  - npm package ecosystem

Then, developer education needs to be produced to explain the why, what, and how of it all. And it needs to be convincing.

### My Preference

I’d like to choose "(5) Require `undefined`", but it's just not practical. That leaves "(3) Prefer `undefined`" as the best course of action.
