# Instructions
1. In Atom, open the *Atom > Snippets...* option in the menu bar
2. Copy and paste the contents of the [snippets.cson](/snippets.cson) file into your snippets.cson file.
3. Save snippets.cson
4. Make sure to star this repo.

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

  // forin (overrides default for-in loop snippet)
  for (let variable in object) {
    if (object.hasOwnProperty(variable)) {

    }
  }

  // fore
  forEach( (el) => {

  });

  // map
  map( (el) => {

  });

  // evr
  every( (el) => {

  });

  // some
  some( (el) => {

  });

  // fil
  filter( (el) => {

  });

  // red
  reduce( (acc, val) => {

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

  // fun (overrides default function snippet)
  const functionName = function functionName() {

  };
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
