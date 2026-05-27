Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isDeclaration

Narrows an `AST` to `Declaration`.

**When to use**

Use to recognize declaration AST nodes before running declaration-specific
handling.

**See**

- `Declaration` for the AST node type narrowed by this guard

**Signature**

```ts
declare const isDeclaration: (ast: AST) => ast is Declaration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L171)

Since v3.10.0