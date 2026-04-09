Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownOption

Encodes an `unknown` input against a schema, returning an `Option` that is
`Some` with the encoded value on success or `None` on failure. Prefer this
over `encodeUnknownExit` or `encodeUnknownEffect` when you only
need to know whether encoding succeeded and don't need error details. For
typed input use `encodeOption`.

**Signature**

```ts
declare const encodeUnknownOption: <S extends Encoder<unknown>>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Option_.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1345)

Since v4.0.0