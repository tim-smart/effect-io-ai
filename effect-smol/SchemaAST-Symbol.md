Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Symbol

AST node matching any `symbol` value.

**When to use**

Use when building an AST that should match any JavaScript symbol value.

**Details**

When serialized to a string-based codec, symbols are converted via
`Symbol.keyFor` and must be registered with `Symbol.for`.

**See**

- `symbol`
- `isSymbol`

**Signature**

```ts
declare class Symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1479)

Since v4.0.0