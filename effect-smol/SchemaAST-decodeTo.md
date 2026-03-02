Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.decodeTo

Attaches a `Transformation` to the `to` AST, making it decode from the
`from` AST and encode back to it.

This is the low-level primitive behind `Schema.transform` and
`Schema.transformOrFail`. It appends a `Link` to the `to` node's
encoding chain.

- Does not mutate either input.
- Returns a new AST with the same type as `to`.

**See**

- `Link`
- `Encoding`
- `flip`

**Signature**

```ts
declare const decodeTo: <A extends AST>(from: AST, to: A, transformation: Transformation.Transformation<any, any, any, any>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2831)

Since v4.0.0