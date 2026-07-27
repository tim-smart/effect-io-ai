Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toRepresentations

Lowers one or more AST encoded sides in a shared reference environment.

**Details**

Apply `SchemaAST.toType` to an AST first to lower its type side instead.

**Signature**

```ts
declare const toRepresentations: (asts: readonly [SchemaAST.AST, ...Array<SchemaAST.AST>]) => MultiDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L710)

Since v4.0.0