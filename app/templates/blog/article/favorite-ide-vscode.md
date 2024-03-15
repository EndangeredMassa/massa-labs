<ArticleHeader @article={{this.model}} />

My favorite IDE is Visual Studio Code.

I've used to a few different editors in my time: vim/tmux, Sublime Text, and Atom. After trying out VS Code and exploring the extensions, I haven't looked back.

## Settings

I don't customize a ton, but the specific chanegs here are a great help to my work.

You can check out my [full settings file](/assets/vscode-settings.json), if interested.

### Sidebar on the Right

It took some getting used, but I moved the sidebar to the right and will never go back. It's great to be able to open/close it without shifting the code on my screen.

```
"workbench.sideBar.location": "right",
```

### Title Bar Config

I like knowing where I am in a repository. This config sets the title bar to alwatys show the repository root and relative path of the current file.

```
"window.title": "${folderName}${separator}${activeEditorMedium}",
```

![Screenshot of title bar example](/assets/vscode-title-bar.png)

## Extensions

These are my favorite extensions. In addition to these, I'll of course install whatever language, framework, or runtime extensions are relevant for a given project.

### Aurora (theme)

Repository: [github:marqu3ss/Aurora-X](https://github.com/marqu3ss/Aurora-X)

![Screenshot of Aurora theme](/assets/vscode-theme-aurora.png)


### Better Comments

Repository: [github:aaron-bond/better-comments](https://github.com/aaron-bond/better-comments)

![Screenshot of some code showing the highlights/featrues from Better Comments](/assets/vscode-better-comments.png)

### Git Lens

Repository: [github:gitkraken/vscode-gitlens](https://github.com/gitkraken/vscode-gitlens)

This extension does way more than I need or use, but I like having it for the line-by-line git blame and some of the git history exploration. You can also easily jump to the git url for a given file.

![Screenshot of some code with line-by-line git blame from Git Lense](/assets/vscode-git-lens.png)


### Status Bar JSON Path

Repository: [github:richie5um/vscode-statusbar-json-path](https://github.com/richie5um/vscode-statusbar-json-path)

When navigating large JSON files or expressions, this is a handy reference to where you are in the overall structure.

![Screenshot of some JSON showing the status bar with the path to the cursor location of Status Bar JSON Path](/assets/vscode-status-bar-json-path.png)


### Sort lines

Repository: [github:Tyriar/vscode-sort-lines](https://github.com/Tyriar/vscode-sort-lines)

Sometimes you need to sort some lines. This one lets you sort within just your current selection.

