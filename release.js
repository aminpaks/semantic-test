const { execSync } = require('child_process');
const pkg = require('./package.json');

const VERSION = pkg.version;

console.log(execSync('.github/publish.sh', { env: { VERSION } }).toString());
