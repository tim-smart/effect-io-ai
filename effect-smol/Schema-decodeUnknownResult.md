Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownResult

Decodes an `unknown` input against a schema, returning a `Result` that
succeeds with the decoded value or fails with a `SchemaError`.

**When to use**

Use when you do not know the input type statically and want decoding to
return a `Result` with `SchemaError` failure data.

**Details**

For input already typed as the schema's `Encoded` type use
`decodeResult`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.decodeUnknownResult` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeUnknownResult: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Result_.Result<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1417)

Since v4.0.0