<ArticleHeader @article={{this.model}} />

## Scoping Philosophy

- A project should be small on a team time scale, measurable in ≤ 6 weeks, ideally ≤ 4 weeks.
    - Many efforts will take longer than weeks, certainly. Those should be broken into meaningful, separate projects that can be tracked at a larger level, often called an Initiative or Program.
- A project should focus on the MVP, doing extra work after the core of the value is delivered
    - After the MVP, you can stop without losing the core value, but you can also continue to add polish. This optionality is critical for being agile and giving Product Managers more say in the roadmap.
- A card should be detailed enough for a team member to get started quickly
- A project’s scope has these goals
    - make the execution of that project as streamlined as possible
    - provide reasonable confidence in a high-level estimate
    - define what is and what is not being done
- The scoping process should focus on
    - resolving technical and organizational unknowns as soon as possible
    - working backwards from desired outcomes: metrics, user flows, etc.

## Scoping Strategies

The best strategy is the one that works best for you. You may even prefer different strategies for different kinds of projects.

Scoping is a very iterative process. The initial draft is just that. Keep revising it until you can walk through the whole project and have nothing else to change.

### Big List of Things: Nodes First

This strategy focuses on writing out all of the cards required to do a project in one place. It can be done with an outline, but can also be done as a giant list of everything, making connections afterwards.

### Dependency Graph: Edges First

This strategy focuses on visually organizing the work, then transforming that into actionable cards. It is more often done in an exploratory flow.

You will need a whiteboard, perhaps a tool like [https://excalidraw.com](https://excalidraw.com/).

- nodes will represent cards where content will represent card title
- edges will represent blocking relationships where arrows represent the direction: `Card A` ——(blocks)——> `Card B`
  - Card A blocks Card B
  - Card B is blocked by Card A

## Scoping Steps

- ensure requirements are clear, complete, and confirmed
- identify technical unknowns
    - for each one, decide if it’s likely on the critical path of the project or not
    - for each critical path unknown, prioritize making it known
    - for each non-critical path unknown, it’s still a relatively high priority to resolve, but anything blocking the critical path can take precedence
- first draft
    - identify key cards
        - unknowns
            - highlight these “Research” nodes to make it clear that these are a higher priority
            - add a second node for each of these that is blocked by the unknown node, representing the work that will be determined on resolution of this node
        - critical path cards
            - the cards that block the most other work (as many separate cards or a few larger cards) are usually considered to be on the critical path of work
            - the critical path should be highlighted to make it clear that these are a higher priority
    - connect known dependencies with arrows indicating the blocking relationship
- iterative drafts
    - walk through the scope, adding more cards as you identify more work to be done
    - flesh out cards
        - outline of specific need
        - references to related materials (docs, code, chat discussions)
        - guidance on how to implement it (suggest file names, locations, function names, patterns)
        - specific pointers to changes necessary to implement
        - other cards references as related, blocking, or blocked by
        - Note: the implementer (who often has more context when they get into it) is (usually) right
- identify the critical path
    - with the cards written and blockers marked, identify the critical path to completing the MVP
    - this path is the longest (by estimated time to complete) path that includes the list of cards that block each other where infinite resources would not reduce the amount of time it takes to get to the end
- card assignment
    - if a card can only be done by a specific person, pre-assign them
        - to encourage knowledge sharing, encourage that person to pair with another team member
    - most cards should not be pre-assigned
        - team members should take the highest priority card in the list
- MVP / Milestones
    - work with Product to determine the smallest, absolutely necessary set of cards to achieve the core value of the goal
    - if more is necessary, definite an MVP milestone and a follow up Milestone for those groups of cards
- when to stop scoping
    - when the requirements of the project will be met by completing the current cards
    - when there are no research cards on the assumed critical path
    - when you are confident that we can staff the project such that
        - there’s enough parallelizable work to start
        - the unknowns will not likely restrict how many people can work on the project at the same time
            - which means we won’t have to pull people off the project
- add or update project estimate
    - consider the amount of people attached to the project
    - consider the skill sets of the people attached to the project
    - consider the critical path’s estimate
    - add general buffer (value will be based on experience and context)
    - add per-card buffer (5 items that each take 1 day will likely take longer than 1 card that takes 5 days)
- run the kickoff and move the project to In Progress

## Scoping Outcomes

When scoping is done, the following should all be true.

- The critical path is identified and prioritized
- Research cards
    - Cards specifically about resolving an unknown
    - the unknown should NOT be expected to significantly affect the scope/timeline of the project
- Cards are detailed enough to be actionable
    - Actionable means they can be worked on without having to ask someone for context

---

## Reference: General Phases of a Project

Note: This is a general ideda. Some parts can overlap or loop back on each other.

- **declaring a goal:** what (usually user-facing) outcome do you want the system to achieve?
    - staff: no one
    - project status: Backlog or Planned
    - output: a rough project description
- **gathering requirements:** identifying the specific needs of the system to achieve that goal
    - staff: project lead
    - project status: Backlog or Planned
    - output: a detailed project description
- **scoping:** defining specific changes that need to be made to achieve the requirements
    - staff: project lead
    - project status: In Progress
    - output: a detailed list of cards (with relationships)
- **implementation:** staffing the project and doing the work
    - staff: project lead, project members
    - project status: In Progress
    - output: completion of all necessary cards
- **complete:** the original goal is achieved
    - staff: follow ups handled by team
    - project status: Done
