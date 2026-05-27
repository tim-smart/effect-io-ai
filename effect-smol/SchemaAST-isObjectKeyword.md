Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isObjectKeyword

Narrows an `AST` to `ObjectKeyword`.

**When to use**

Use to identify the AST node for the TypeScript `object` keyword when
inspecting or transforming a schema AST.

**See**

- `ObjectKeyword` for the AST node matched by this guard
- `objectKeyword` for the singleton `ObjectKeyword` AST instance
- `isObjects` for struct and record AST nodes

**Signature**

```ts
declare const isObjectKeyword: (ast: AST) => ast is ObjectKeyword
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L380)

Since v3.10.0