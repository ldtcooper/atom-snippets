# Instructions
1. Open up Atom
2. Open the *Atom > Snippets...* option in the toolbar
3. Copy and paste the contents of the [snippets.cson](/snippets.cson) file into your snippets.cson file.
4. Save snippets.cson
5. Make sure to star this repo.

# Snippets

So far, this repo has snippets for SVG(HTML), JavaScript, and Markdown. More are always being added though, so check back often. The below examples show the shortcut in comments above the code that it will generate.

## SVG Snippets
```html
  <!-- rec -->
  <rect x="" y="" width="" height=""/>

  <!-- cir -->
  <circle r="" cx="" cy="" />

  <!-- g -->
  <g></g>

  <!-- defs -->
  <defs>

  </defs>

  <!-- txt -->
  <text x="" y=""></text>
```

## JavaScript
```javascript
  // for (overrides default for loop snippet)
  for (let i = 0; i < array.length; i++) {

  }

  // fore
  forEach( (el) => {

  });

  // map
  map( (el) => {

  });

  // imp
  import package from 'path';

  // imps
  import {packages} from 'path';

  // impas
  import * as alias from 'path';

  // saf
  (el) => #;

  // req
  const package = require("package");
```

## React/Redux

```javascript
  // class_component
  React import statement, basic class component structure, and class export statement.
  
  // container
  Import statements for connect (from React-Redux) and the contained component. Also includes the skeleton for mapStateToProps, mapDispatchToProps and the export statement using connect.
  
  // root
  Root file template.
  
  // entry
  Entry file template.
```

## Markdown
**NB:** The autocomplete commands also include ending quotes, but those have been excluded here for display reasons.

```markdown
  h1
  # header

  h2
  ## header

  h3
  ### header

  h4
  #### header

  h5
  ##### header

  h6
  ###### header

  css
  ```css

  html
  ```html


  javascript
  ```javascript


  ruby
  ```ruby


  python
  ```python

  chk
  - [ ] item

```
