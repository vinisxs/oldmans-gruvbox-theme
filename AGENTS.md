# AGENTS.md

## Build

Theme source is **Jsonnet** (`src/*.jsonnet`), compiled to JSON in `themes/`.

```bash
npm run build                  # compile .jsonnet -> themes/*.json
npm run package                # create .vsix in ./dist/
npm run vsce-publish           # publish to marketplace
```

The build script (`scripts/build.js`) compiles all `.jsonnet` files in `src/` to JSON in `themes/`. It exits with code 1 if any file fails to compile.

## Architecture

- `src/veteran-gruvbox-dark.jsonnet` — the active theme source (edit this)
- `themes/veteran-gruvbox-dark.json` — compiled output shipped in the extension (do not edit directly)
- `package.json` `contributes.themes` points to `./themes/veteran-gruvbox-dark.json`
- `.vscodeignore` excludes `src/` from the packaged `.vsix`; only `themes/*.json` ships
- Alpha channels are string concatenation in Jsonnet: `palette.color + "80"`

## Lint

```bash
npm run build                  # compile first
npm run lint                   # validates theme against JSON Schema (offline)
```

The lint script validates the compiled theme against `schemas/vscode-theme.schema.json` using [ajv](https://ajv.js.org/). It checks:
- Color keys are valid VS Code theme keys
- Color values are valid hex (`#RGB`, `#RGBA`, `#RRGGBB`, or `#RRGGBBAA`)
- `tokenColors` and `semanticTokenColors` structure

The schema includes descriptions for each color key extracted from the VS Code documentation, providing context for what each key controls.

### Updating the schema

When VS Code adds new theme color keys, regenerate the schema:

```bash
npm run generate-schema        # scrapes VS Code docs and regenerates schema
```

The schema is committed to the repo so lint works offline.

No formatter, typecheck, or test runner is configured.
