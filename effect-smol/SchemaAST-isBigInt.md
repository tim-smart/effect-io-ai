Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isBigInt

Narrows an `AST` to `BigInt`.

**When to use**

Use to identify bigint AST nodes while inspecting or transforming schema ASTs.

**See**

- `BigInt` for the AST node matched by this guard
- `bigInt` for the singleton instance; use `isBigInt` when narrowing an existing `AST` value

**Signature**

```ts
declare const isBigInt: (ast: AST) => ast is BigInt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L265)

Since v4.0.0