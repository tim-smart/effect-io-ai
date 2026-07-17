Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isLiteral

Narrows an `AST` to `Literal`.

**When to use**

Use to recognize exact string, number, boolean, or bigint literal AST nodes.

**See**

- `Literal` for the AST node type narrowed by this guard
- `LiteralValue` for the values stored by literal nodes

**Signature**

```ts
declare const isLiteral: (ast: AST) => ast is Literal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L294)

Since v3.10.0