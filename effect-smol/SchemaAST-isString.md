Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isString

Narrows an `AST` to `String`.

**When to use**

Use to detect schema AST nodes that match any string value while inspecting
or transforming a Schema AST.

**See**

- `String` for the AST node class narrowed by this guard
- `string` for the singleton `String` AST instance
- `isLiteral` for exact primitive literal AST nodes, including exact string literals

**Signature**

```ts
declare const isString: (ast: AST) => ast is String
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L220)

Since v4.0.0