Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.flip

Swaps the decode and encode directions of an AST's `Encoding` chain.

After flipping, what was decoding becomes encoding and vice versa. This is
the core operation behind `Schema.encode` — encoding a value is decoding
with a flipped AST.

- Memoized: same input reference → same output reference.
- Recursively walks composite nodes.
- Does not mutate the input.

**See**

- `toType`
- `toEncoded`

**Signature**

```ts
declare const flip: (ast: AST) => AST
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L3011)

Since v4.0.0