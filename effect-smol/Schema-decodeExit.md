Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeExit

Decodes a typed input (the schema's `Encoded` type) against a schema
synchronously, returning an `Exit` that is either a `Success` with the
decoded value or a `Failure` with a `SchemaError`. Only usable with
schemas that have no `DecodingServices` requirement. For `unknown` input use
`decodeUnknownExit`.

**Signature**

```ts
declare const decodeExit: <S extends Decoder<unknown>>(schema: S) => (input: S["Encoded"], options?: AST.ParseOptions) => Exit_.Exit<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1173)

Since v4.0.0