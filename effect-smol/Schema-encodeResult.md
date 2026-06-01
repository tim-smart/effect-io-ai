Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeResult

Encodes a typed input (the schema's `Type`) against a schema, returning a
`Result` that succeeds with the encoded value or fails with a
`SchemaError`.

**When to use**

Use when you already have a value typed as the schema's `Type` and want
encoding to return a `Result` with `SchemaError` failure data.

**Details**

For `unknown` input use `encodeUnknownResult`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeResult` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeResult: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Result_.Result<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1803)

Since v4.0.0