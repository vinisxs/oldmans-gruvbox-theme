# Veteran Gruvbox

A Gruvbox theme built by a veteran developer, for veteran developers.

Most modern themes are designed by young eyes that can effortlessly distinguish
subtle color variations. But experience has taught us that clarity matters more
than minimalism. Veteran Gruvbox delivers bold contrast and sharp visual
separation between UI elements — because your code editor should work as hard
as you do, not make you squint.

**Staying true to the [Gruvbox philosophy](https://github.com/morhetz/gruvbox):**
colors easily distinguishable, contrast enough, and still pleasant for the eyes.
We just turn that philosophy up a notch for those of us who've earned our stripes.

**Built for developers who value clarity over trends.**

## Installation

### From VSIX (manual)

1. Download the `.vsix` file from releases
2. In VS Code: `Ctrl+Shift+P` → `Extensions: Install from VSIX...`
3. Select the downloaded `.vsix` file

### From Marketplace

Search for "Veteran Gruvbox" in the VS Code Extensions panel.

## Development

### Prerequisites

- Node.js 18+
- npm

### Setup

```bash
npm install
```

### Build

Compile Jsonnet sources to JSON:

```bash
npm run build
```

This compiles all `.jsonnet` files in `src/` to `themes/*.json`.

### Lint

Validate theme against JSON Schema:

```bash
npm run build
npm run lint
```

Checks color keys, hex values, and token structure. Works offline.

### Updating the schema

When VS Code adds new theme color keys:

```bash
npm run generate-schema
```

This scrapes the VS Code documentation and regenerates `schemas/vscode-theme.schema.json`.

### Package

Create a `.vsix` file for testing:

```bash
npm run package
```

The `.vsix` will be created in `./dist/veteran-gruvbox.vsix`.

### Test locally

**Option 1: Extension Development Host (recommended)**

1. Build the theme: `npm run build`
2. Press `F5` (or go to Run → Start Debugging)
3. A new VS Code window opens with your extension loaded
4. In the new window: `Ctrl+K Ctrl+T` → "Veteran Gruvbox Dark Theme"

Changes to the theme require rebuilding (`npm run build`) and reloading the Extension Development Host window (`Ctrl+R`).

**Option 2: Install VSIX manually**

1. Build the theme: `npm run build`
2. Package it: `npm run package`
3. Install the `.vsix` in VS Code: `Ctrl+Shift+P` → `Extensions: Install from VSIX...`
4. Select the theme: `Ctrl+K Ctrl+T` → "Veteran Gruvbox Dark Theme"

### Publish

```bash
npm run vsce-publish
```

## Project Structure

```
src/
  veteran-gruvbox-dark.jsonnet   # Theme source (edit this)
themes/
  veteran-gruvbox-dark.json      # Compiled output (do not edit)
scripts/
  build.js                       # Jsonnet compiler
```

## License

MIT
