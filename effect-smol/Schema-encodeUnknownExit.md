Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownExit

Encodes an `unknown` input against a schema synchronously, returning an
`Exit` that is either a `Success` with the encoded value or a `Failure` with
a `SchemaError`. Only usable with schemas that have no
`EncodingServices` requirement. Prefer `encodeExit` when the input is
already typed as the schema's `Type`.

**Signature**

```ts
declare const encodeUnknownExit: <S extends Encoder<unknown>>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1326)

Since v4.0.0