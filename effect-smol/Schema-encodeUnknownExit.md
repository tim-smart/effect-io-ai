Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownExit

Encodes an `unknown` input against a schema synchronously, returning an
`Exit` that is either a `Success` with the encoded value or a `Failure` with
a `SchemaError`.

**When to use**

Use when the input type is not statically known and encoding should return an
`Exit` instead of failing or throwing.

**Details**

Only usable with schemas that have no `EncodingServices` requirement. Prefer
`encodeExit` when the input is already typed as the schema's `Type`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeUnknownExit: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1588)

Since v4.0.0