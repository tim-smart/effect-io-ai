Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeResult

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning a `Result` that succeeds with the decoded value or fails with a
`SchemaError`.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and
want decoding to return a `Result` with `SchemaError` failure data.

**Details**

For `unknown` input use `decodeUnknownResult`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.decodeResult` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeResult: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Result_.Result<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1373)

Since v4.0.0