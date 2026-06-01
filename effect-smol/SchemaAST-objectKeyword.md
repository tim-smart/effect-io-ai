Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.objectKeyword

Provides the singleton `ObjectKeyword` AST instance.

**When to use**

Use to reuse the canonical AST node for the TypeScript `object` keyword when
building or comparing `SchemaAST` values directly.

**See**

- `ObjectKeyword` for the AST node class
- `isObjectKeyword` for narrowing an AST to an `ObjectKeyword` node

**Signature**

```ts
declare const objectKeyword: ObjectKeyword
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1048)

Since v3.10.0