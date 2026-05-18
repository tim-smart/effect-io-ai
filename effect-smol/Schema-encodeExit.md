Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeExit

Encodes a typed input (the schema's `Type`) against a schema synchronously,
returning an `Exit` that is either a `Success` with the encoded value or a
`Failure` with a `SchemaError`. Only usable with schemas that have no
`EncodingServices` requirement. For `unknown` input use
`encodeUnknownExit`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeExit: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1414)

Since v4.0.0