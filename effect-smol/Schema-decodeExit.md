Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeExit

Decodes a typed input (the schema's `Encoded` type) against a schema
synchronously, returning an `Exit` that is either a `Success` with the
decoded value or a `Failure` with a `SchemaError`.

**When to use**

Use when you need to decode already typed `Encoded` input into an `Exit`
whose failure contains `SchemaError`.

**Details**

Only usable with schemas that have no `DecodingServices` requirement. For
`unknown` input use `decodeUnknownExit`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.decodeExit` for the adapter whose failure contains `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeExit: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Exit_.Exit<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1342)

Since v4.0.0