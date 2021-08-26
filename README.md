
Calcit Workflow
----

> running in both Calcit and Calcit-js, with hot code reload.

### Usages

Install [calcit-runner](https://github.com/calcit-lang/calcit_runner.rs) to run demo:

```bash
cr -1 # run once

cr # run and watch
```

run in JavaScript:

```bash
cr --emit-js -1 # emit-js once
yarn webpack
node js-out/bundle.js # run code
```

watch reload js program:

```bash
cr --emit-js

# and watch and build with Webpack
hot=true webpack --watch

# run with hot reload
node js-out/bundle.js
```

run tests:

```bash
mode=ci cr -1

mode=ci node js-out/bundle.js
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
