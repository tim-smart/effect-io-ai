Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Link

A single step in an `Encoding` chain, pairing a target `AST`
with a `Transformation` or `Middleware` that converts values between the
current node and the target.

- `to` — the AST node on the other side of this transformation step.
- `transformation` — the bidirectional conversion logic (decode/encode).

Links are composed into a non-empty array (`Encoding`) attached to
AST nodes that have a different encoded representation.

**See**

- `Encoding`
- `decodeTo`

**Signature**

```ts
declare class Link { constructor(
    to: AST,
    transformation:
      | Transformation.Transformation<any, any, any, any>
      | Transformation.Middleware<any, any, any, any, any, any>
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L341)

Since v4.0.0