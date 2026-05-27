Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isNull

Narrows an `AST` to `Null`.

**When to use**

Use to recognize an AST node that represents exactly the `null` literal when
inspecting, traversing, or transforming schema ASTs.

**See**

- `Null` for the AST node type narrowed by this guard
- `null` for the singleton `Null` AST instance
- `isLiteral` for exact primitive literal AST nodes

**Signature**

```ts
declare const isNull: (ast: AST) => ast is Null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L188)

Since v4.0.0