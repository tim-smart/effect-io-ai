Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.any

Provides the singleton `Any` AST instance.

**When to use**

Use when you need the singleton AST node for the TypeScript `any` type and
intentionally want parsing to accept every input value.

**See**

- `unknown` for the sibling AST singleton that also accepts every value while preserving the safer `unknown` type

**Signature**

```ts
declare const any: Any
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L919)

Since v4.0.0