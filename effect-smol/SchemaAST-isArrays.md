Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isArrays

Narrows an `AST` to `Arrays`.

**When to use**

Use to recognize array-like AST nodes before reading their element, rest, or
mutability metadata.

**See**

- `Arrays` for the AST node type narrowed by this guard

**Signature**

```ts
declare const isArrays: (ast: AST) => ast is Arrays
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L418)

Since v4.0.0