
# EDN to Cirru EDN converter

Convert `data/source.edn` to `data/target.cirru` with Calcit 0.13.77.

## Usage

```bash
corepack yarn install --immutable
caps --ci --strict
calcit calcit.cirru js
node main.mjs
```

Run the built-in Calcit test with:

```bash
calcit calcit.cirru test --require-match
```

## License

MIT
