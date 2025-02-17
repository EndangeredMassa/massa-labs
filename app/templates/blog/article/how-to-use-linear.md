<ArticleHeader @article={{this.model}} />

[Linear](https://linear.app) is a fantastic project management tool. In this article I share notes on how best to leverage it for effective project management.

<aside>
<b>Jargon</b>

<p>Linear calls the unit of work Issues, but I prefer the term Cards.</p>
</aside>

# Leveling Up with Linear

Effectively using a project management tool leads to many benefits:

- more visible work
- clearer team focus
- clearer next actions for team members
- easier status updates for stakeholders

If you or your team is looking to change your project management, try these strategies for bringing the whole team along.

## Direct Responsible Individual (DRI)

Identify someone on the team be the person responsible for getting the whole team using Linear to the desired degree. Discuss this as a team.

This DRI should be allowed and expected to be annoying about creating and updating cards.

## Team Experiment

Define parameters for a team experiment:

- duration: 2+ weeks
- changes: (list out all the changes to your team and individual workflows that you plan to make for this experiment)
- expected outcomes: (list the outcomes you expect to see)
- history: log the start of the experiment, all check-ins, and any final decisions

After the duration has expired, discuss the experiment with the team. Verify the expected outcomes. Decide if you want to extend the experiment to get more data, extend it with some more changes, cancel it, or adopt it.

## Hook Into Existing System

A “process” is a series of steps you are supposed to take to accomplish a state goal. A system is a series of steps that are necessarily taken to accomplish a stated goal. It requires a lot more willpower to follow a process vs. a system.

Wherever possible, incorporate the desired changes into existing team and individual workflows. This could mean:

- during standup, also affirm if all of your card exists and are up to date
- during a weekly team meeting, review the Linear board for anything that may be missing
- during a project kickoff, add a step to ensure the Linear board is complete; or even better, change kickoff to be a walkthrough of the linear board to understand the scope

## Request Accountability

Ask your manager or stakeholders to hold you accountable to making Linear your source of truth for status and progress on your team’s work.

Your manager could check in weekly to make sure you are doing what you want to be doing in Linear.

Your stakeholders could go to Linear for status updates. If not found, they can poke you to put them into Linear.

# Responsibility

## Single-assignment of tasks

Linear allows for only one person to be assigned a given task. This is a philosophical choice on their end to ensure that all tasks have a specific person responsible for completing it, even if they get help from others.

In a very collaborative environment, it can be hard to decide who gets assignment credit. It is easy to dismiss this as unimportant, but as companies move more and more into data-driven productivity metrics, that’s just not true. These metrics do matter.

You can mitigate this potential negative effect by:

- making smaller cards
- trading off who gets assignment credit
- adding `paired-${name}` labels and related Linear views to better tell the story of what each person worked on
- lobby Linear and productivity metrics tools to better support pairing in their metrics

## Project Lead

There should be one clear project lead for a given project. This person is responsible for the project moving forward, primarily:

- ensuring the project goals are well defined
- ensuring all necessary cards exist and have clear guidance on what must be done
- removing blockers

## Cross-functional Projects

Projects should be as cross-functional as possible. If you need a pricing decision, changelog written, legal review, or whatever else, you should have a card for it. Even if the responsible person doesn’t have a linear account, you should track that task in the project with no assignee.

This keeps the full scope of the project in Linear, making it easier to estimate, monitor, and appreciate.

# Label Groups

[Linear’s Label Groups](https://linear.app/docs/labels#label-groups) are a great way to organize labels, allowing for better filtering of cards. They can feel weird to use, though.

Keep in mind:

- only one label per group can be applied to a card
- groups cannot be applied as a label to a card
- you can search for cards that have any label within a group
- labels in groups are often rendered with only their label name; naming is important

If you do really want to apply the whole group as a label, because no specific label in that group makes sense, consider making a new label in the group called something generic, like “core”.

# Dependencies

## Blocking and Blocked By

Use cards blocking cards liberally. This makes it clearer what work is actionable.

Determine the critical path of the project, which is the largest unknowns and/or most expensive tasks that need to be done that are blocking or blocked by other work. All items on this path should be at the top of the priority list.

Ideally, Linear would have a feature that visualized this for you in a map. They don’t currently. You can draw it out, if that helps.

## Sub Cards

If you find sub cards useful, then by all means use them.

Keep in mind that they come with tradeoffs, though:

- the parent card and the child cards are all listed together in Linear views
- they imply a necessary N→1 blocking relationship between the children and the parent
- its not clear if the parent card itself is actionable or just a placeholder
- status of the parent card can be synthesized automatically in linear based on the children, but this happens when a child status changes, which may not act how you want
    - for example: you may create 2 sub cards, complete them both, which completes the parent card, then add another sub card

# Source of truth

## Detailed Description

Cards should have a detailed description of what problem needs to be solved, some notion of why, and some guidance (when possible) on how to solve it.

Links should exist to relevant context. If that includes an ephemeral source, like a Slack thread where data is only retained for a certain time period, make sure the most important parts of that are copied into the card.

## Slack Synced Threads

<aside>
<b>Warning</b>

<p>Your posts synced into Slack will look like they came from you, but they actually come from a Linear bot that copies your name and avatar.</p>
</aside>

Linear’s Slack integration includes the option for Synced Threads. Enabling these will copy all posts between a Linear cards’ comment thread and a Slack thread.

You can sync threads when you create a card from a Slack thread. You can also sync a thread directly with a Slack thread option.

When the Slack thread is deleted, the Linear copy sticks around. This is a useful way to preserve specific conversations for future context.

## Linear Asks

Enabling Linear Asks in a support channel is a great way to track all of the threads in that channel.

With the associated synced threads, you can even mute the support channel itself and handle (and respond to) all requests without leaving Linear.

# Statuses

The default statuses cover the basics. I recommend:

- enabling Triage
- adding Needs Details (Unstarted)
- adding Merged (Completed)

You can rename the existing labels as it makes sense to your team.

Heres what the full list could look like:

- Triage
    - Triage
- Backlog
    - Backlog
- Unstarted
    - Needs Details
    - Todo
- Started
    - In Progress
    - In Review
- Completed
    - Merged
    - Done
- Canceled
    - Canceled

The higher-level status groupings are the Status Categories. Linear automation works based on those. The Statuses within exist so that you can differentiate between sub-steps of the larger workflow.

Order can matter in the Statuses of a given Status Category if you have workflow settings enabled that move cards between statuses. It seems like the top-most status is used for those by default.

## Triage

Make sure “Triage” is enabled for your Linear team under “Team settings” > “Workflow” > “Triage”.

Triage is a good default place for:

- any card where you don’t already know where to put it
- customer support issues
- questions from other teams

You should have someone responsible for monitoring triage.

In the display settings for the “All issues” view, toggle “Show triage issues” on. This allows you to see everything in the team board. It also makes it easier to move items across statuses.

## Triage SLAs

Service-Level Agreements (SLAs) are deadlines applied to cards based on rules. They are managed globally.

Typical SLAs on Triage for a team is 24 hours. Unfortunately, Linear only clears SLAs when a card is moved to a Completed status.

In order for Linear SLAs to work when a Triage item is moved to another status, configure two SLA automation rules.

**SLA Automation Rules**
    
- When issue “Team is YOUR_TEAM” “Status is Triage”
    - Then “Add SLA of 24 hours”
- When issue “Team is YOUR_TEAM” “Status is not Triage”
    - Then “Remove SLA”

## Needs Detail vs Todo

The suggested Needs Detail status is there to represent cards that would otherwise be in Todo, but need more fleshing out.

## Merged vs Done

The suggested Merged status is there to represent cards that have code or config that has been reviewed and committed, but not deployed or rolled out.

This distinction can make it clearer that the task is essentially done (especially if you trust your CI/CD process), but tracks that it’s not 100% there.

If you are using the Github branch tracking integration, merging a tracked branch’s PR will move the associated card to Merged.

# History

## Backlog Asset (not a graveyard)

Backlogs are an asset, if managed correctly.

If they are ignored, they are a graveyard. If they are relentlessly pruned, they are a high-maintenance garden. If you keep clean as you go along, you can have a useful backlog without spending a lot of effort.

When:

- creating a card
    - add all relevant labels
    - make the title clear without other context
- opening a card
    - If the card doesn’t have a label it needs, add it
    - If the card’s title is unclear, especially without other context, improve it
    - If the card doesn’t apply anymore, cancel it

Then you get the benefit of:

- when asked about something, you can search the backlog for known issues and desired improvements
- when starting a project, you can pull in known issues and desired improvements

## Backlog Status (in a project)

In a project, the Backlog status is a useful place to put things that you don’t currently plan on doing, but if someone had time it would be nice to have.

After the project is closed, the Backlog items still exist in your Backlog Asset, but also keep context in the project the spawned them.

## Archive: Maximum Allowed

Linear will delete completed cards, cycles, and projects pretty aggressively by default. You can change this setting to up to 12 months (which is still not long enough) in “Team settings” > “Issue statuses and automations” > “Auto-archive closed issues, cycles, and projects”.

# Slack Integration

## Team-wide Notification Channel

In “Team settings” > “Slack notifications”, you can enable notifications for activity across the entire team.

This can be useful to send to a channel that everyone should mute. Then team members and stakeholders can jump into it when they want to see recent activity across the team.

You can also configure github to post PR notifications to the same channel for broader activity coverage.

## Project-specific Channels

In a project, clicking the bell icon allows you to configure slack notifications for that project.

Depending on what you want to know about, you can enable:

- Status Updates: “New project update is posted”
- Scope Changes: “An issue is added to the project”
- Progress Towards Completion: “An issue marked completed or cancelled”
- Activity: “Comments and changes to project description”

The Status Updates notification requires that the status itself be posted in Linear. You can do this in the Overview tab of a project by clicking “New update”. This is a great way to keep status updates co-located with the scope and progress of that project, then distributed out to Slack for stakeholders.

# Visibility of Work

## Cards for Work, Not Just Code

Cards are for tasks to be done, not just delivering code. This includes other business functions, as discussed in "Cross-functional Projects".

Create cards for things like:

- auditing some code or tool
- researching approaches to solving a problem
- scoping out the project
- writing some documentation in Notion

## Status Comments in Cards

When working on a card for more than a day, it can start to be indistinguishable between not working on anything. It can help the visibility of your work to post a daily comment in the card describing what you’ve been doing to move that card to completion.

## Cycles

To configure cycles, go to “Team settings” > “Cycles” > “Enable cycles”.

If you already operate in Cycles (sprints or otherwise), this feature is a useful way to keep track of that in Linear.

If you don’t operate this way, Cycles can still be useful for grouping. For example, you can set up 1 week cycles, then looking backwards you can quickly pull up all items in a given week.

## Credit in Productivity Metrics

Linear data can be exported to producitivy metrics tools, like [DX](https://getdx.com).

If your company uses a tool like this, you can get credit for completing Linear cards in that tool.
