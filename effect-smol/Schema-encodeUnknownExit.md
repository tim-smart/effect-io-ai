Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownExit

Encodes an `unknown` input against a schema synchronously, returning an
`Exit` that is either a `Success` with the encoded value or a `Failure` with
a `SchemaError`.

**When to use**

Use when you need to encode unknown input into an `Exit` whose failure
contains `SchemaError`.

**Details**

Only usable with schemas that have no `EncodingServices` requirement. Prefer
`encodeExit` when the value is already typed as the schema's `Type`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeUnknownExit` for the adapter whose failure contains `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeUnknownExit: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1599)

Since v4.0.0