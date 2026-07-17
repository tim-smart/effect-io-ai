Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isAST

Returns `true` if the value is an `AST` node (any variant).

**Details**

Uses the internal `TypeId` brand to distinguish AST nodes from arbitrary
objects.

**See**

- `AST`

**Signature**

```ts
declare const isAST: (u: unknown) => u is AST
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L93)

Since v4.0.0