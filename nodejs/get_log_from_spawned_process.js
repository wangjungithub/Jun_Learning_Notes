var spawn = require('child_process').spawn,
    ps = spawn('ps', ['ax']);

console.log('Spawned child pid: ' + ps.pid);
ps.stdout.pipe(process.stdout, {end: false});
ps.stderr.pipe(process.stderr, {end: false});
ps.stdin.end();
