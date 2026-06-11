Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeExit

Encodes a typed input (the schema's `Type`) against a schema synchronously,
returning an `Exit` that is either a `Success` with the encoded value or a
`Failure` with a `SchemaError`.

**When to use**

Use when you need to encode already typed schema values into an `Exit` whose
failure contains `SchemaError`.

**Details**

Only usable with schemas that have no `EncodingServices` requirement. For
`unknown` input use `encodeUnknownExit`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeExit` for the adapter whose failure contains `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeExit: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1628)

Since v4.0.0