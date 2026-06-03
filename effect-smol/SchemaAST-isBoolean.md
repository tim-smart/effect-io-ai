Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isBoolean

Narrows an `AST` to `Boolean`.

**When to use**

Use to identify the `Boolean` AST variant while inspecting, traversing, or
transforming schema definitions.

**See**

- `Boolean` for the AST node type matched by this guard
- `boolean` for the singleton instance to use when constructing a boolean AST directly

**Signature**

```ts
declare const isBoolean: (ast: AST) => ast is Boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L311)

Since v4.0.0