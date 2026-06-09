const https = require('https');
const fs = require('fs');
const path = require('path');

const THEME_COLOR_REFERENCE_URL =
    'https://code.visualstudio.com/api/references/theme-color';

const SCHEMA_PATH = path.join(__dirname, '..', 'schemas', 'vscode-theme.schema.json');

const NOT_THEME_KEYS = [
    'workbench.colorCustomizations',
    'editor.tokenColorCustomizations',
];

const get = url =>
    new Promise((resolve, reject) => {
        https.get(url, res => {
            let body = '';
            res.setEncoding('utf8');
            res.on('data', data => (body += data));
            res.on('end', () => resolve(body));
            res.on('error', reject);
        });
    });

async function scrapeThemeKeys() {
    const data = await get(THEME_COLOR_REFERENCE_URL);

    const regex = /<code>([^<]+?)<\/code>\s*[:\-]?\s*([^<\n]*)/g;
    const entries = new Map();
    let match;

    while ((match = regex.exec(data)) !== null) {
        const key = match[1].trim();
        const desc = match[2].trim().replace(/\s+/g, ' ');

        if (/ /.test(key)) continue;
        if (/#.../.test(key)) continue;
        if (/&quot;/.test(key)) continue;
        if (key.length <= 4) continue;
        if (NOT_THEME_KEYS.includes(key)) continue;

        if (!entries.has(key)) {
            entries.set(key, desc);
        }
    }

    if (entries.size === 0) {
        throw new Error(
            "Couldn't find any matches with <code>...</code>, maybe docs have changed?"
        );
    }

    return entries;
}

function buildSchema(keyDescriptions) {
    const colorProperties = {};
    for (const [key, description] of keyDescriptions) {
        const prop = {
            type: 'string',
            pattern: '^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
        };
        if (description) {
            prop.description = description;
        }
        colorProperties[key] = prop;
    }

    return {
        $schema: 'http://json-schema.org/draft-07/schema#',
        title: 'VS Code Color Theme',
        description: 'Schema for VS Code color theme files',
        type: 'object',
        properties: {
            $schema: { type: 'string' },
            name: { type: 'string' },
            author: { type: 'string' },
            type: { type: 'string' },
            semanticClass: { type: 'string' },
            semanticHighlighting: { type: 'boolean' },
            colors: {
                type: 'object',
                properties: colorProperties,
                additionalProperties: false,
            },
            tokenColors: {
                type: 'array',
                items: {
                    type: 'object',
                    properties: {
                        name: { type: 'string' },
                        scope: {
                            oneOf: [
                                { type: 'string' },
                                { type: 'array', items: { type: 'string' } },
                            ],
                        },
                        settings: {
                            type: 'object',
                            properties: {
                                foreground: {
                                    type: 'string',
                                    pattern: '^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
                                },
                                background: {
                                    type: 'string',
                                    pattern: '^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
                                },
                                fontStyle: {
                                    type: 'string',
                                    pattern: '^$|^(italic|bold|underline|strikethrough)(\\s+(italic|bold|underline|strikethrough))*$',
                                },
                            },
                            additionalProperties: false,
                        },
                    },
                    required: ['settings'],
                    additionalProperties: false,
                },
            },
            semanticTokenColors: {
                type: 'object',
                additionalProperties: {
                    oneOf: [
                        {
                            type: 'string',
                            pattern: '^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
                        },
                        {
                            type: 'object',
                            properties: {
                                foreground: {
                                    type: 'string',
                                    pattern: '^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
                                },
                                background: {
                                    type: 'string',
                                    pattern: '^#([0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
                                },
                                bold: { type: 'boolean' },
                                italic: { type: 'boolean' },
                                underline: { type: 'boolean' },
                                strikethrough: { type: 'boolean' },
                            },
                            additionalProperties: false,
                        },
                    ],
                },
            },
        },
        required: ['colors'],
        additionalProperties: false,
    };
}

(async () => {
    console.log('Fetching VS Code theme color reference...');
    const keyDescriptions = await scrapeThemeKeys();
    console.log(`Found ${keyDescriptions.size} theme color keys.`);

    const schema = buildSchema(keyDescriptions);

    fs.mkdirSync(path.dirname(SCHEMA_PATH), { recursive: true });
    fs.writeFileSync(SCHEMA_PATH, JSON.stringify(schema, null, 2) + '\n');
    console.log(`Schema written to ${path.relative(process.cwd(), SCHEMA_PATH)}`);
})().catch(err => {
    console.error('Error generating schema:', err);
    process.exit(1);
});
