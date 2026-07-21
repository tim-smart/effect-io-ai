Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodePromise

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning a `Promise` that resolves with the decoded value or rejects with a
`SchemaError` for schema mismatches.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and
need decoding to return a JavaScript `Promise` that rejects with
`SchemaError` for schema mismatches.

**Details**

For `unknown` input use `decodeUnknownPromise`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Gotchas**

Non-schema failures may reject with a runtime failure instead of
`SchemaError`.

**See**

- `SchemaParser.decodePromise` for the adapter that rejects with an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const decodePromise: <S extends ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1719)

Since v3.10.0