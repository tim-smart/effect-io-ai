Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.PropertySignature

Represents a named property within an `Objects` node.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1828)

Since v3.10.0