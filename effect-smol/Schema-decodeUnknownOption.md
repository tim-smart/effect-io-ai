Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownOption

Decodes an `unknown` input against a schema, returning an `Option` that is
`Some` with the decoded value on success or `None` on failure. Prefer this
over `decodeUnknownExit` or `decodeUnknownEffect` when you only
need to know whether decoding succeeded and don't need error details. For
typed input use `decodeOption`.

**Signature**

```ts
declare const decodeUnknownOption: <S extends Decoder<unknown>>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Option_.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1187)

Since v4.0.0