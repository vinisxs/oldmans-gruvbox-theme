const fs = require('fs');
const path = require('path');
const Ajv = require('ajv');

const SCHEMA_PATH = path.join(__dirname, '..', 'schemas', 'vscode-theme.schema.json');
const THEME_PATH = path.join(__dirname, '..', 'themes', 'veteran-gruvbox-dark.json');

if (!fs.existsSync(SCHEMA_PATH)) {
    console.error('Schema not found. Run `npm run generate-schema` first.');
    process.exit(1);
}

if (!fs.existsSync(THEME_PATH)) {
    console.error('Theme not found. Run `npm run build` first.');
    process.exit(1);
}

const schema = JSON.parse(fs.readFileSync(SCHEMA_PATH, 'utf8'));
const theme = JSON.parse(fs.readFileSync(THEME_PATH, 'utf8'));

const ajv = new Ajv({ allErrors: true, verbose: true });
const validate = ajv.compile(schema);
const valid = validate(theme);

if (valid) {
    console.log(`Theme is valid. ${Object.keys(theme.colors).length} color keys, all conforming to schema.`);
    process.exit(0);
}

let errors = 0;
let warnings = 0;

for (const err of validate.errors) {
    if (err.keyword === 'additionalProperties' && err.params?.additionalProperty) {
        if (err.instancePath.startsWith('/colors')) {
            console.error(`Unknown color key: "${err.params.additionalProperty}"`);
            errors++;
        } else {
            console.error(`Unknown property: ${err.instancePath}/${err.params.additionalProperty}`);
            errors++;
        }
    } else if (err.keyword === 'pattern') {
        if (err.instancePath.includes('fontStyle')) {
            console.error(`Invalid fontStyle at ${err.instancePath}: "${err.data}" (expected: italic, bold, underline, strikethrough, or empty)`);
        } else {
            console.error(`Invalid color value at ${err.instancePath}: "${err.data}" (expected hex: #RGB, #RGBA, #RRGGBB, or #RRGGBBAA)`);
        }
        errors++;
    } else if (err.keyword === 'type') {
        console.error(`Type error at ${err.instancePath}: expected ${err.params.type}, got ${typeof err.data}`);
        errors++;
    } else if (err.keyword === 'required') {
        console.error(`Missing required property: ${err.instancePath}/${err.params.missingProperty}`);
        errors++;
    } else {
        console.error(`Validation error at ${err.instancePath}: ${err.message}`);
        warnings++;
    }
}

console.error(`\n${errors} error(s), ${warnings} warning(s)`);
process.exit(errors > 0 ? 1 : 0);
