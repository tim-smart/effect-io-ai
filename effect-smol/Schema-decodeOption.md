Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeOption

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning an `Option` that is `Some` with the decoded value on success or
`None` on failure. For `unknown` input use `decodeUnknownOption`.

**Signature**

```ts
declare const decodeOption: <S extends Decoder<unknown>>(schema: S) => (input: S["Encoded"], options?: AST.ParseOptions) => Option_.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1217)

Since v4.0.0