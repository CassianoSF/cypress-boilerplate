var spawn = require('child_process').spawn
var cmd = process.platform === "win32" ? 'npx.cmd' : 'npx'
spawn('npx.cmd', [ 'snowpack', 'dev'], {stdio: 'inherit'})
spawn('npx.cmd', ['cypress', 'run'], {stdio: 'inherit'})
