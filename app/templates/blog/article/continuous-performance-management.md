<ArticleHeader @article={{this.model}} />

Performance Management is often cumbersome, full of bias, and unhelpful. You can spend a lot of time trying to fight this, but this will often grind other work to a halt during review periods.

Finding a balance between time to value here is key. I'll happily spend a lot of time on performance reviews because I see the payoff, but not everyone running performance reviews will agree. An ideal process makes effective reviews easier for everyone to execute, even those who don't want to spend time on them.


## Building the Format

I've long been an advocate for brag documents of some form, but they've always been relatively generic lists of things. This is helpful, but recently I feel like I've honed this into a really useful tool.

The key is to start from the formal performance assessment format, then work backwards. The Performance Alignment document should be structured to make it easy to collect data in the format you'll eventually need.

The details will depend on your company's process. Find examples below under [Reference](#reference).


## Running the Process

For any process where you can benefit from recording things over time to avoid recency bias, I always:

1. have the place and process for recording set up as soon as possible.
1. scheduled times or events where you explicit record things along the way.


### Start of Cycle

Create the Performance Alignment document at the beginning of each performance cycle. Set up all the reference links and test them out. Make sure everyone involved knows how to record examples and do whatever you can to make that easy.

Schedule times to pair with your reports on gathering examples for the Performance Alignment document. I typically do weekly or bi-weekly 1:1s already. Performance Review cycles are typically 6 months at places I've worked. So monthly feels like the right cadence for checking in on Performance Alignment.


### Pairing on Finding Examples

Go through the reference queries with your report, searching for examples of performance criteria. As you find something that you think applies, discuss why, then record it in the Performance Alignment document.

The goal is to find representative examples, not all examples. No one will read through every pull request someone made over 6 months, for example.

One example can show up in multiple Performance Criteria. It's typical for there to be some overlap.


### End of Cycle

At the end of a Performance Review Cycle, because the Performance Alignment Document is already in the same format, start by copy-pasting whatever you have so far.

Do one last check for any good examples of the performance criteria. Focus on any of those criteria that are light on examples.

For each example, make sure to add notes about what this example represents and how well it does that.

For each performance criteria, add an Overview/Summary that pulls out the highlights.

For the full review, add an Overview/Summary that pulls out the highlights.


## My Results

Running and delivering reviews using this model has been very well received.

> This was the most useful review I've ever received.

> This process is great. It gives me confidence in my reviews.

> I like how this minimizes surprises in performance review.

This process orients Performance Review into my favorite problem solving framing: we're working together to solve this problem. We literally pair on filling out the document multiple times during the cycle.

When I've run this process without doing the check-ins during the cycle, I would end up spending 2-3 hours per person on their reviews. After doing the check-ins during the cycle, I could get a high-quality review done in 0.5 hours per person.

Sure, we spent that time more spread out, but it was also more useful spread out. We removed recency bias and had more opportunities to make small behavioral changes along the way.

After sharing the success of this format with the other managers, this process because the standard for everyone else to use.


## Reference


<details>
<summary>Performance Alignment > Template</summary>

> This template uses many placeholders for you to fill in. Everything is optional.

Reference Docs
- `link to performance management process`
- `link to leveling framework`

Previous Cycle
- `link to previous performance review`
- `summarize key points from previous performance review`

Finding your work
- `link to completed tickets/cards`
- `link to completed pull requests`
- `link to pull request reviews`
- `link to notable mentions in chat system`
- `link to documents/pages created`

### `Performance Criteria A`

> `General description of Performance Criteria A`

> `Current level's description of Performance Criteria A`

Examples
- `Project X`
  - `example 1`
- `Project Y`
  - `example 2`
- `Project Z`
  - `example 3`

Room for Improvement as `Current Level`
- `example 4`

Opportunities for Growth towards `Next Level`
- `example 5`

### `Performance Criteria B`

> ...
</details>


<details>
<summary>Performance Alignment > Middle of Cycle Example</summary>

*This is a realistic example of one performance criteria's notes in a performance alignment document for a Software Engineer of level L4 in the middle of a cycle.*

## Current Level: L4

### Mastery

> **General:** Job Knowledge and quality of work product
>
> **L4:** Proficient in multiple significant areas (or in one area with significant depth, for specialist roles). Work product is high-quality and elegant in its simplicity.

- Examples
    - **Project NEW FEATURE**
        - ([1](https://example.com/link-to-notion-doc)): brought clarity to the project by gathering inputs from customers, product, and design
        - ([2](https://example.com/link-to-slack-post)): considered all the options carefully, then made a decision on a path forward
        - ([3](https://example.com/link-to-linear-card)): reference for completion of this work
    - **Project WORKFLOW IMPROVEMENTS**
        - ([1](https://example.com/link-to-linear-card)): dove deep on figuring out the how the platform primitives work together at a technical level, then implemented the necessary change
    - **Project TEST COVERAGE**
        - ([1](https://example.com/link-to-linear-card)): automated a lot of our fixture management
- Room for Improvement as L4
    - TODO
- Opportunities for Growth to L5
    - TODO

### Impact

...

### Autonomy

...

### Collaboration

...

</details>


<details>
<summary>Performance Alignment > End of Cycle Example</summary>

*This is a realistic example of a performance alignment document for a Software Engineer of level L4. The full set of ladder levels don't matter for this example. This exact content is what shows up in the official review.*

### Guidance

- Read through
    - [H1 Performance Review Cycle]()
    - [Engineering Job Leveling Framework]()
- Follow your work
    - [Completed Cards by Assignment]()
    - [Completed Cards by Label]()
    - [Merged Pull Requests]()
        - `user:vercel is:pr author:EMPLOYEE is:merged merged:>=2024-02-01`
    - [Reviewed Pull Requests]()
        - `user:vercel is:pr reviewed-by:EMPLOYEE created:>=2024-02-01 -author:EMPLOYEE`
    - Search Slack [#kudos](https://vercel.slack.com/archives/CJZL9GSLR):
        - `in:#kudos after:2024-01-31 @EMPLOYEE`
    - Search Notion
        - Sort: `Created: Newest first`
        - Created By: `EMPLOYEE`
        - Date: `2024-01-31` - (today)

<br>

---

## Current Level: L4

### Mastery

> **General:** Job Knowledge and quality of work product
>
> **L4:** Proficient in multiple significant areas (or in one area with significant depth, for specialist roles). Work product is high-quality and elegant in its simplicity.

- Examples
    - **Project NEW FEATURE:** `EMPLOYEE` jumped into this already-long-running project, gained context quickly, and executed. This is one of the more complex parts of the the system that our team touches because of the implicit modeling and inferred state. `EMPLOYEE` took care to understand the system (reading code, asking questions, pairing), made great decisions about the best solution, then executed them with clarity of code and confidence via tests. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project WORKFLOW IMPROVEMENTS:** `EMPLOYEE` dove deep into the system to understand how environments, environment variables, domains, branches, and project settings work. They leveraged this to great effect when pushing back on Product and Design to accommodate how the system works now, how it needs to change incrementally over time, and where we want it to end up. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project TEST COVERAGE:** `EMPLOYEE` dove deep on the fixture management and updates part of this project. The maintenance burden from this project could have been quite high, but `EMPLOYEE` made sure we mitigated that as much as possible as soon as possible. They ensured that our fixture maintenance was considerate of the different ways different frameworks can release updates. `EMPLOYEE` also found a great solution to testing the node dimension of the matrix. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project CI/CD IMPROVEMENTS:** `EMPLOYEE` figured out how Datadog works, how their ci/cd improvements feature works, and made it happen. We now have clear reports on how often our test suites are flakey and what the failures were that we can review each week. ([1](https://example.com/link-to-linear-card))
- Room for Improvement as L4
    - (none)
- Opportunities for Growth to L5
    - work with your manager to find or make opportunities to leverage your modeling or framework expertise in more depth

**Overall:** `EMPLOYEE` is one of the most skilled engineers I've ever had the pleasure of working with. They can model the most complex systems in ways that are (as much as can be) easy to understand, easy to extend, easy to maintain, and easy to implement. At Vercel, they’ve shown this at score of 3, but I’m sure we’ll see this at a score of 4 in the future.

### Impact

> **General:** Scope of work and size of impact
>
>  **L4:** Consistently delivers multi-team impact, i.e. significantly helps multiple teams achieve their goals.

- Examples
    - **Project NEW FEATURE:** `EMPLOYEE` took over Project Lead for NEW FEATURE to finish out the bugs and complete some new scope added by leadership. This included bringing on a member of Turbo and a member of Design Engineering to execute, leading up to the Project WORKFLOW IMPROVEMENTS. This was all done outside our team mandate. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project WORKFLOW IMPROVEMENTS:** `EMPLOYEE` lead this project from pretty rough requirements to much clearer requirements, as of the end of this Performance Review cycle. This required working with Product, Design, Design Engineering, RELATED TEAMS. This was all done outside our team mandate. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project TEST COVERAGE:** `EMPLOYEE` dove deep on the fixture management and updates part of this project. The maintenance burden from this project could have been quite high, but `EMPLOYEE` made sure we mitigated that as much as possible as soon as possible. This greatly improved the coverage of `vercel/api` changes over Framework, Runtime, or Package Manager support. This helps RELATED TEAMS ship their changes more reliably. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Mentorship of `TEAM MATE`:** `EMPLOYEE` has done a good job onboarding and mentoring `{TEAM MATE}` as they ramp up to the team.
- Room for Improvement as L4
    - (minor) work with your manager to ensure there are opportunities for multi-team impact
- Opportunities for Growth to L5
    - pair more with others outside the team
    - contribute to linting rule or style guide discussions
    - work with your manager to find opportunities to drive or significantly contribute to engineering-wide technical improvement initiatives

**Overall:** `EMPLOYEE`'s impact in retrospect was quite large, but that's partially due to a shift in decision about which team owns the NEW FEATURE and WORKFLOW IMPROVEMENTS stream of work. Given that explicit decision, the score could be a 4. Absent it, the score is closer to 2.5-3. In the next cycle, let's make sure there are opportunities for multi-team impact.

### Autonomy

> **General:** Level of guidance required
>
> **L4:** Identifies the right problems to solve and finds ways to solve the problem faster and with fewer resources than the norm.

- Examples
    - **Customer Support / Triage:** `EMPLOYEE` will run these to ground without oversight. There are no concerns about it being seen through to the end. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-linear-card))
    - **Project NEW FEATURE:** `EMPLOYEE` is leading this project, taking over from the previous lead. There's been a lot of collaboration so far because of the context handoff, but `EMPLOYEE` has completely taken over to the point that the previous lead no longer has to be involved. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project WORKFLOW IMPROVEMENTS:** `EMPLOYEE` is leading this project and driving it well. Even though this project is still in the early stages, `EMPLOYEE` has very well identified the right problems to solve and in what order. Specifically, they drove the scope of Milestone 1 down to the most useful parts of defining WORKFLOW IMPROVEMENTS that require the least upheaval of the current codebase. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project TEST COVERAGE:** `EMPLOYEE` took on the fixture implementation and maintenance work and drove it to a great place without oversight. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project CI/CD IMPROVEMENTS:** `EMPLOYEE` surveyed the options, identified a solution that uses an existing tool (Datadog), and figured it out. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
- Room for Improvement as L4
    - (none)
- Opportunities for Growth to L5
    - work with your manager to find or make opportunities to drive larger-than-team technical improvement initiatives that you can own
    - work with your manager to find or make opportunities to drive larger-than-team product development initiatives that you can own

**Overall:** `EMPLOYEE` will take a problem and make it go away (properly), no matter the size. For most meetings, if `EMPLOYEE` is in the meeting, I don't have to be there. They'd end up saying the same thing anyway. I have absolute trust in `EMPLOYEE` that they will make a great decision on their own or know when to reach out for more details or another opinion.

### Collaboration

> **General:** Effectiveness when working and communicating with others
>
> **L4:** Strategic partner to other teams; they cannot achieve their goals without you. Communication is persuasive and succinct.

- Examples
    - **Customer Support / Triage:** `EMPLOYEE` works well with Customer Success, RELATED TEAMS when necessary to get these issues resolved. Questions are explicit and context is given where useful. ([1](https://example.com/link-to-slack-post))
    - **Project NEW FEATURE:** `EMPLOYEE` took over Project Lead. This project has required collaboration with Product, Design, and RELATED TEAMS. It has also required project management over members of Design Engineering and Turbo. `EMPLOYEE` has done all of this with great clarity. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
    - **Project WORKFLOW IMPROVEMENTS:** `EMPLOYEE` took over Project Lead. This has required getting context from the previous lead and working with Product, Design, and RELATED TEAMS to understand the current system, user needs, and requirements. `EMPLOYEE` has driven this jumble of opinions and data into a direction that we'll start to execute on soon. `EMPLOYEE` is also writing a handoff context document for when the ownership of this works moves to RELATED TEAMS. ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
- Room for Improvement as L4
    - **Keep a source of truth when leading projects:** It helps a lot to keep a single source of truth up to date. In the future, you should make sure that the project document contains the most up to date premise, assumptions, requirements, and designs for a project leading up to it's true kickoff.
        - **On WORKFLOW IMPROVEMENTS as an example:** The rest of the communication (in Slack, in the documents that did exist, and in meetings) was clear, full of context, and effective. However, it was a bit hard to follow what the current state was when someone new started following. It was also hard sometimes among the working group of Zero Config, Design, and Product to know what the current state was. (This was made harder by Design iterating on their own, but getting ahead of that in the future could help too.)  ([1](https://example.com/link-to-notion-doc)) ([2](https://example.com/link-to-slack-post)) ([3](https://example.com/link-to-linear-card))
- Opportunities for Growth to L5
    - work with RELATED TEAMS to guide technical direction on WORKFLOW IMPROVEMENTS and potential future Pipeline projects
    - drive some decisions about how the division at large or at least RELATED TEAMS support frameworks and runtime at large

**Overall:** `EMPLOYEE` is an excellent collaborator. They spend real effort on building good working relationships, communicating well-considered context, organizing work that needs to be done, and finding the right people to talk to and getting the information they need from them. In the next cycle, `EMPLOYEE` should push for a bit clearer source of truth of the requirements of projects they run.

## Review Summary

`EMPLOYEE` is fantastic engineer that grows roots throughout an organization both individually and technically. In this first review cycle of their time here, they've shown great value. I'm sure even greater value is to come.

Going forward, `EMPLOYEE` should focus on:
- continuing their great work as they've done so far
- find or make more opportunities for multi-team impact by sharing your expertise either in collaboration or instruction
- focus projects you lead more on a source of truth, even if that means you are telling Product and Design what to do

</details>
