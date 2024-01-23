<ArticleHeader @article={{this.model}} />

To find the best options for the installing/updating Node.js packages in all circumstances, I tested it locally and globally for [npm](https://docs.npmjs.com/cli/v6/commands/npm-install), [yarn 1](https://classic.yarnpkg.com/en/docs/cli/add), and [pnpm](https://pnpm.io/cli/install).

## Testing

Given a package is installed at a minor version behind latest, I ran the following commands with the goal of ensuring the `latest` version of the package was installed. I checked local/global variations on install, install `@latest`, and update commands.

Installed: `"async": "1.0.0"`
Latest: `async@3.2.4`

- npm
    - `install` local: `npm i async` -> NOT updated to `latest` (1.5.2)
    - `install` global: `npm i -g async` -> UPDATED to `latest`
    - `install` latest local: `npm i async@latest` -> UPDATED to `latest`
    - `install` latest global: `npm i async@latest` -> UPDATED to `latest`
    - `update`: the `npm update` command tries to update packages to the latest acceptable version that matches the explicit or implicit range, not the `latest` tag
- yarn 1+
    - `install` local: `yarn add async` -> UPDATED to `latest`
    - `install` global: `yarn global add async` -> UPDATED to `latest`
    - `install` latest local: `yarn add async@latest` -> UPDATED to `latest`
    - `install` latest global: `yarn global add async@latest` -> UPDATED to `latest`
    - `update`: the `yarn update` command tries to update packjages to the most recent acceptable version that matches the explicit or implicit range, not the `latest` tag; it can accept a `latest` flag or use the `@latest` tag, but you could install with `@latest` for the same effect
    - `up`: the `yarn up` command will update a package to latest, but it is only available in yarn 2+
- pnpm
    - `install` local: `pnpm i async` -> NOT updated to `latest` (1.0.0)
    - `install` global: `pnpm i -g async` -> UPDATED to `latest`
    - `install` latest local: `pnpm i async@latest` -> UPDATED to `latest`
    - `install` latest global: `pnpm i -g async@latest` -> UPDATED to `latest`
    - `update`: the `pnpm update` command tries to update packages to the most recent acceptable version that matches the explicit or implicit range, not the `latest` tag; it can accept a `latest` flag or use the `@latest` tag, but you could install with `@latest` for the same effect

Note: `npx` always (local and global) needs `@latest` to guarantee the latest version is used.

## Analysis

From the test results (see below), I think we can conclude:

- update commands are not worth using--stick with install commands
- global installs never need any special tags or flags
- local installs sometimes need `@latest` (not for yarn)

## Result

Always use `@latest`. It's simpler and always works.
