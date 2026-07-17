Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isSymbol

Narrows an `AST` to `Symbol`.

**When to use**

Use to narrow an `AST` node before handling the `Symbol` variant for schemas
that accept any JavaScript symbol value.

**See**

- `isUniqueSymbol` for the sibling guard that narrows the `UniqueSymbol` variant for one exact symbol value

**Signature**

```ts
declare const isSymbol: (ast: AST) => ast is Symbol
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L279)

Since v4.0.0