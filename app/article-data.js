let articles =
[
  {
    "slug": "how-to-use-linear",
    "published": true,
    "title": "How to Use: Linear",
    "date": "2025-02-16",
    "tags": ["productivity"],
    "description": "Linear is a fantastic project management tool. In this article I share notes on how best to leverage it for effective project management."
  },
  {
    "slug": "favorite-social-commentary-sources",
    "published": true,
    "title": "Favorite Social Commentary Sources: If Books Could Kill, Last Week Tonight",
    "date": "2025-01-31",
    "tags": ["social", "favorite"],
    "description": "Why these are my favorite sources of commentary on society in general."
  },
  {
    "slug": "opportunity-vs-impact",
    "published": true,
    "title": "Detangling Opportunity and Impact",
    "date": "2024-11-19",
    "tags": ["productivity"],
    "description": "Impact is often a requirement to advancement, but a lack of opportunity can get in the way. Here's how to navigate that conflict."
  },
  {
    "slug": "detangling-outcomes-outputs",
    "published": true,
    "title": "Detangling Outcomes and Outputs",
    "date": "2024-11-19",
    "tags": ["productivity"],
    "description": "Team performance perception is dominated by Outcomes and Ouptuts. Here's how to understand how that works and why it matters."
  },
  {
    "slug": "how-to-scope-a-project",
    "published": false,
    "title": "How to Scope a Project",
    "date": "2024-10-05",
    "tags": ["productivity"],
    "description": ""
  },
  {
    "slug": "continuous-performance-management",
    "published": true,
    "title": "Continuous Performance Management",
    "date": "2024-07-20",
    "tags": ["productivity"],
    "description": "How to balance time, growth, and autonomy while keeping performance aligned with expectations."
  },
  {
    "slug": "escaping-infinity-pools",
    "published": true,
    "title": "Escaping Infinity Pools",
    "date": "2024-07-11",
    "tags": ["productivity"],
    "description": "Blocking my access to Infinity Pools."
  },
  {
    "slug": "favorite-tech-commentary-sources",
    "published": true,
    "title": "Favorite Tech Commentary Sources: Tech Won't Save Us, Cory Doctorow, 404 Media, Molly White, Louis Rossmann, How to Fix the Internet",
    "date": "2024-03-21",
    "tags": ["tech", "favorite"],
    "description": "Why these are my favorite sources of commentary on the state of technology."
  },
  {
    "slug": "favorite-news-sources",
    "published": true,
    "title": "Favorite News Sources: Ground News, 404 Media, WTFJHT",
    "date": "2024-03-20",
    "tags": ["social", "favorite"],
    "description": "Why these are my favorite sources of news."
  },
  {
    "slug": "favorite-game-ff7",
    "published": true,
    "title": "Favorite Game: Final Fantasy VII",
    "date": "2024-03-19",
    "tags": ["gaming", "favorite"],
    "description": "Guide to absorbing the Final Fantasy VII universe."
  },
  {
    "slug": "favorite-ide-vscode",
    "published": true,
    "title": "Favorite IDE: Visual Studio Code",
    "date": "2024-03-13",
    "tags": ["software-engineering", "favorite"],
    "description": "Why Visual Studio Code is my favorite IDE."
  },
  {
    "slug": "levels-of-web-form-libraries",
    "published": true,
    "title": "Levels of Web Form Libraries",
    "date": "2024-02-01",
    "tags": ["software-engineering"],
    "description": "Overview of the possible kinds of web form library interfaces."
  },
  {
    "slug": "comparing-test-runners",
    "published": true,
    "title": "Comparing: JavaScript Test Runners",
    "date": "2024-01-31",
    "tags": ["software-engineering"],
    "description": "Deciding on a JavaScript test runner based on required features and maturity."
  },
  {
    "slug": "prefer-null-or-undefined-in-javascript",
    "published": true,
    "title": "Should we prefer <code>null</code> or <code>undefined</code> in JavaScript?",
    "date": "2024-01-23",
    "tags": ["software-engineering"],
    "description": "JavaScript has two empty values where most languages have one and some have zero: <code>null</code> and <code>undefined</code>. Should we prefer one over the other?"
  },
  {
    "slug": "updating-npm-packages",
    "published": true,
    "title": "Updating <code>npm</code> Packages With Certainty",
    "date": "2024-01-22",
    "tags": ["software-engineering"],
    "description": "To find the best options for the installing/updating in all circumstances, I tested it locally and globally for <code>npm</code>, <code>yarn</code>, and <code>pnpm</code>."
  },
  {
    "slug": "theme-pact",
    "published": true,
    "title": "Theme Pact: Goal Setting Framework with no Goals",
    "date": "2023-02-02",
    "tags": ["productivity"],
    "description": "Pulling from several sources, my framework for goal setting includes:<br><ul><li><b>Theme:</b> a guiding light, a default decision</li><li><b>PACT Goals:</b> specific personal outputs I commit to</li><li><b>Habits:</b> systems for making sure I achieve those outputs</li></ul>"
  },
  {
    "slug": "conventional-comments",
    "published": true,
    "title": "Conventional Comments: Streamlining Feedback",
    "date": "2022-03-15",
    "tags": ["productivity"],
    "description": "How I use Conventional Comments to make it clear (1) what kind of comment it is, (2) what specifically I want, and (3) how important it is that my comment is resolved."
  },
  {
    "slug": "detangling-the-code-review",
    "published": true,
    "title": "Detangling the Code Review: Questions, Preferences, Suggestions, Conventions, Requirements",
    "date": "2022-03-14",
    "tags": ["productivity"],
    "description": "Teams can have more effective code reviews if they default to approval and have a framework for delivering and managing feedback."
  },
  {
    "slug": "detangling-the-standup",
    "published": true,
    "title": "Detangling the Standup: Status Reports, Team Planning, Context Sharing, and Community Building",
    "date": "2022-01-04",
    "tags": ["productivity"],
    "description": "Standups are often applied without understanding the problem they are solving. This leads to:<br><ol><li>Not clearly solving a specific problem</li><li>Not solving a problem with the best solution</li><li>A daily interruption to deep work</li></ol>What follows is a pragmatic and ideal approach to resolving this situation. The pragmatic approach is to understand so you can excel within that system. The ideal solution tries to change the system to better serve the team."
  },
  {
    "slug": "detangling-the-manager",
    "published": true,
    "title": "Detangling the Manager: Supervisor, Team Lead, Mentor",
    "date": "2021-11-18",
    "tags": ["organizational-development"],
    "description": "The term Manager means a lot of different things to different companies. It can include Project Manager, Product Manager, Technical Lead, Team Lead, Mentor, Coach, Supervisor, as well as Individual Contributor. Most often, in my experience, a manager is responsible for at least these roles: Supervisor, Mentor, and Team Lead.<br><br>There is great value in having those roles played by separate people."
  },
  {
    "slug": "how-to-run-strength-finding-interview",
    "published": true,
    "title": "How to Run Strength-finding Interviews",
    "date": "2020-03-25",
    "tags": ["interviews"],
    "description": "Highlighting candidates at their best to reduce bias and gatekeeping in hiring."
  },
  {
    "slug": "developers-guide-a11y",
    "published": true,
    "title": "A Developer's Guide to Better Accessibility",
    "date": "2017-12-07",
    "tags": ["accessibility"],
    "description": "Melanie Sumner and I wrote about the \"Six Pillars of Accessibility\" as a structured guide for developers to move the needle on accessibility."
  },
  {
    "slug": "how-to-start-linting-projects",
    "published": true,
    "title": "An Incremental Approach to Linting to Your Projects",
    "date": "2017-08-08",
    "tags": ["productivity"],
    "description": "I have gone through the process of adding linting to existing, large projects a couple of times. I've learned some lessons about how to approach this so that it's not disruptive to the team doing other work. Follow these steps to get robust linting into your project without pulling team velocity to a halt!"
  }
]
export default articles;
