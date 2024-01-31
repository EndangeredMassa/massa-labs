<ArticleHeader @article={{this.model}} />

Every so often, I like to survey the JavaScript test runner space to see what's out there. This time, I was pushed to do so by continuing to hit bugs and limitations of Jest.

I worked with my team at Vercel to flesh out this comparison.

Spoiler: `vitest` wins.


## Context

Recent Jest issues 've Iencountered:

- [failing beforeAll() causes even passing tests in the scope to fail #6695](https://github.com/facebook/jest/issues/6695)
- [Jest should fail fast and exit early (change request for --bail) #6527](https://github.com/facebook/jest/issues/6527)
- [Jest globals differ from Node globals #2549](https://github.com/facebook/jest/issues/2549)

Test runner libraries under consideration:

- `jest` ([docs](https://jestjs.io/docs/getting-started))
- `vitest` ([docs](https://vitest.dev/guide/features.html))
- `mocha` ([docs](https://mochajs.org/))
- `node-tap` ([docs](https://node-tap.org/))
- `node:test` ([docs](https://nodejs.org/api/test.html))


## Requirements and Nice to Haves

Requirements:

- maturity: battle-tested, active project
- parallelization: able to run individual tests (not only entire files) in parallel with proper concurrency limits and strategies for preventing test pollution
- sharding: grouping tests into chunks that can be run separately, across many files
- JS modules / ESM: native support for ecmascript modules
  TypeScript: native support for TypeScript
- hook failure: skips all tests in context when `before`/`beforeAll` fails
- hooks order: execute in proper (lexical) order
- no globals required
- no globals overridden

Nice to haves:

- low startup time: &lt;1sec OK, &lt;200ms awesome
- snapshots: saving state to disk for comparison in future runs
- mocking imports: easily replacing imported module with a test module
- non-trivial assertions: assertion library that produces good error messages for many cases
- bail / fail-fast option: option to fail entire suite on first failure
- watch mode
- line coverage: not very important to me, but useful for others


## Comparison

Feature Matrix:

| Feature | jest | vitest | mocha | node-tap | node:test |
| --- | --- | --- | --- | --- | --- |
| **maturity** | [veteran](https://github.com/facebook/jest/commit/88a94d5d1bc1f387317a3068bf510ab992c5dc64) | [mature](https://github.com/vitest-dev/vitest/commit/d1803031c7114d334f3423006864745f2751eb62) | [veteran](https://github.com/mochajs/mocha/commit/d6a539ee2b083fcf5603d2bd61bc721c8c7bf11d) | [veteran](https://github.com/tapjs/node-tap/commit/7cce2e2aec2078c29f7fab558927485f5bab7a4d) | [stable in 20.0.0](https://github.com/nodejs/node/issues/46642) |
| **parallelization** | [~](https://jestjs.io/docs/api#testconcurrentname-fn-timeout) | Y | Y | Y | Y |
| **shard** | Y | Y | [N](https://github.com/mochajs/mocha/issues/4958) | N | Y |
| **JS modules / ESM** | [~](https://jestjs.io/docs/ecmascript-modules) | Y | Y | Y | Y |
| **TypeScript** | Y | Y | Y | Y | [Y*](https://stackoverflow.com/questions/74358752/tsx-could-not-find-directory/74360552#74360552) |
| **hooks failure** | N | Y | Y | N | Y |
| **hooks order** | N | [N*](https://vitest.dev/config/#sequence-hooks) | N | Y | N |
| **no globals required** | N | Y | Y | Y | Y |
| **no globals overridden** | [N](https://github.com/jestjs/jest/issues/2549) | Y | Y | Y | Y |
| ----- *Nice to Have* ----- | | | | | |
| **low startup time** | ~341 ms | ~941 ms | ~290 ms | ~794 ms | ~193 ms |
| **snapshots** | Y | Y | N | Y | N |
| **mock imports** | Y | Y | N | Y | N |
| **non-trivial assertions** | Y | Y | N | Y | Y |
| **bail / fail fast** | N | Y | N | Y | [Y*](https://github.com/molow/reporters/tree/main/packages/bail) |
| **watch mode** | Y | Y | Y | Y | Y |
| **line coverage** | Y | Y | N | Y | [~](https://nodejs.org/api/test.html#collecting-code-coverage) |

Key:

- `Y`: yes, this feature exists and is useful
- `Y*`: yes, this feature exists, but may require a plugin or non-trivial config
- `N`: no, this feature does not exist
- `N*`: no, this feature does not exist, but the docs/community say it does
- `~`: ish, this feature exists, but may be incomplete or immature


## Decision

[`vitest`](https://vitest.dev)!

The only tool that meets almost every requirement and nice-to-have is `vitest`. That's my new default decision.

If you notice anything wrong in this chart, please let me know!

- https://github.com/EndangeredMassa/massa-labs/issues
- [@sean@social.massalabs.com](https://social.massalabs.com/@sean)

