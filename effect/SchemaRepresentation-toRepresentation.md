Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toRepresentation

Lowers the encoded side of an AST to a live representation document.

**Details**

Apply `SchemaAST.toType` to the AST first to lower its type side instead.

**Signature**

```ts
declare const toRepresentation: (ast: SchemaAST.AST) => Document
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L696)

Since v4.0.0