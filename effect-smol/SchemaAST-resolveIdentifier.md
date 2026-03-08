Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.resolveIdentifier

Returns the `identifier` annotation from the AST node, if set.

The identifier is typically set by `Schema.annotations({ identifier: "..." })`
and is used for error messages and schema identification.

**See**

- `resolve`
- `resolveTitle`

**Signature**

```ts
declare const resolveIdentifier: (ast: AST) => string | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L3346)

Since v4.0.0