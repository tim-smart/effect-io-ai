Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeExit

Encodes a typed input (the schema's `Type`) against a schema synchronously,
returning an `Exit` that is either a `Success` with the encoded value or a
`Failure` with a `SchemaError`. Only usable with schemas that have no
`EncodingServices` requirement. For `unknown` input use
`encodeUnknownExit`.

**Signature**

```ts
declare const encodeExit: <S extends Top & { readonly EncodingServices: never; }>(schema: S) => (input: S["Type"], options?: AST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1347)

Since v4.0.0