Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromASTs

Converts one or more Schema ASTs into a `MultiDocument`.

**When to use**

Use when you have multiple Schema ASTs and need one schema representation
`MultiDocument` with shared references.

**Details**

All schemas share a single `references` map.

**See**

- `MultiDocument`
- `fromAST`

**Signature**

```ts
declare const fromASTs: (asts: readonly [SchemaAST.AST, ...Array<SchemaAST.AST>]) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1723)

Since v4.0.0