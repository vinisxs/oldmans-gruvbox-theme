const fs = require('fs');
const path = require('path');
const jsonnet = require('jsonnet');

const SRC_DIR = path.join(__dirname, '..', 'src');
const THEME_DIR = path.join(__dirname, '..', 'themes');

if (!fs.existsSync(THEME_DIR)) {
    fs.mkdirSync(THEME_DIR, { recursive: true });
}

const files = fs.readdirSync(SRC_DIR).filter(f => f.endsWith('.jsonnet'));

if (files.length === 0) {
    console.error('No .jsonnet files found in src/');
    process.exit(1);
}

let failed = false;

files.forEach(file => {
    const baseName = path.basename(file, '.jsonnet');
    const inputPath = path.join(SRC_DIR, file);
    const outputPath = path.join(THEME_DIR, `${baseName}.json`);

    try {
        const vm = new jsonnet();
        const jsonOutput = vm.evalFile(inputPath);
        fs.writeFileSync(outputPath, JSON.stringify(jsonOutput, null, 2) + '\n');
        console.log(`Built ${file} -> themes/${baseName}.json`);
    } catch (err) {
        console.error(`Error building ${file}:`, err.message);
        failed = true;
    }
});

if (failed) {
    process.exit(1);
}
