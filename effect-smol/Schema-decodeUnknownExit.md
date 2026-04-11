Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownExit

Decodes an `unknown` input against a schema synchronously, returning an
`Exit` that is either a `Success` with the decoded value or a `Failure` with
a `SchemaError`. Only usable with schemas that have no
`DecodingServices` requirement. Prefer `decodeExit` when the input is
already typed as the schema's `Encoded` type.

**Signature**

```ts
declare const decodeUnknownExit: <S extends Decoder<unknown>>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Exit_.Exit<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1176)

Since v4.0.0