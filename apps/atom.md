# Atom

## Config

- Load user snippets from [`snippets.cson`](atom/snippets.cson) to `~/.atom/snippets.cson`
- Make tabs wider
  You should go to the themes tab in the settings view. Scroll all the way down until you see 'core themes' and the one dark ui theme. It should have a settings button that takes you to the theme's settings.
- Remove page rule guide/line: `Disable the Wrap Guide package` `Settings > Packages > Search "wrap guide" > Disable`
- Recents (Closed Files): `Settings > Packages > Open Recent > List Directories Added to Project`

### Show closing brace/tag when folding code blocks

Add below code to `~/.atom/config.cson`:

```cson
".basic.html.text":
  editor:
    foldEndPattern: ""
".css.source":
  editor:
    foldEndPattern: ""
".html.php.text":
  editor:
    foldEndPattern: ""
".js.jsx.source":
  editor:
    foldEndPattern: ""
".js.source":
  editor:
    foldEndPattern: ""
```

## Install Packages

- atom-beautify
- badass-react-snippets
- file-icons
- git-time-machine
- highlight-selected
- html-head-snippets
- language-babel
- language-javascript-jsx
- linter
- linter-eslint
- linter-jscs
- merge-conflicts
- minimap
- open-recent
- php-debug
- pigments
- prettier-atom
- split-diff
- tab-control
- tabs-to-spaces
- todo-show
