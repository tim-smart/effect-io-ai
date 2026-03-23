Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.PropertySignature

A named property within an `Objects` node.

Pairs a `name` (any `PropertyKey`) with a `type` (`AST`). The
property's optionality and mutability are determined by the `type`'s
`Context`.

**See**

- `Objects`

**Signature**

```ts
declare class PropertySignature { constructor(
    name: PropertyKey,
    type: AST
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1578)

Since v4.0.0