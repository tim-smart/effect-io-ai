Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.bigInt

Provides the singleton `BigInt` AST instance.

**When to use**

Use to reuse the canonical `BigInt` AST node when constructing, inspecting,
or transforming schemas at the AST level.

**See**

- `BigInt` for the AST node class and string-codec behavior
- `isBigInt` for narrowing an AST to a `BigInt` node

**Signature**

```ts
declare const bigInt: BigInt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1569)

Since v4.0.0