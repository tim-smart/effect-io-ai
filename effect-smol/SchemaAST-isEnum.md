Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isEnum

Narrows an `AST` to `Enum`.

**When to use**

Use to recognize enum AST nodes before reading enum cases or running
enum-specific handling.

**See**

- `Enum` for the AST node type narrowed by this guard

**Signature**

```ts
declare const isEnum: (ast: AST) => ast is Enum
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L334)

Since v4.0.0