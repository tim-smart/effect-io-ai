Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromASTs

Converts one or more Schema ASTs into a `MultiDocument`.

- Use when you have multiple schemas that may share references.
- Pure function; does not mutate the input ASTs.
- All schemas share a single `references` map.

**See**

- `MultiDocument`
- `fromAST`

**Signature**

```ts
declare const fromASTs: (asts: readonly [AST.AST, ...Array<AST.AST>]) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1626)

Since v4.0.0