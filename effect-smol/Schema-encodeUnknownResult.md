Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownResult

Encodes an `unknown` input against a schema, returning a `Result` that
succeeds with the encoded value or fails with a `SchemaError`.

**When to use**

Use when you do not know the input type statically and want encoding to
return a `Result` with `SchemaError` failure data.

**Details**

For values already typed as the schema's `Type` use `encodeResult`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeUnknownResult` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeUnknownResult: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Result_.Result<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1775)

Since v4.0.0