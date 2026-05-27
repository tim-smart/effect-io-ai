Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeOption

Encodes a typed input (the schema's `Type`) against a schema, returning an
`Option` that is `Some` with the encoded value on success or `None` on
failure. For `unknown` input use `encodeUnknownOption`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeOption: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Option_.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1529)

Since v3.10.0