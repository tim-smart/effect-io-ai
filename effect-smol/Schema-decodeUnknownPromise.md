Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownPromise

Decodes an `unknown` input against a schema, returning a `Promise` that
resolves with the decoded value or rejects with a `SchemaError` for
schema mismatches.

**When to use**

Use when you need decoding of unknown input to return a JavaScript `Promise`
that rejects with `SchemaError` for schema mismatches.

**Details**

For input already typed as the schema's `Encoded` type use
`decodePromise`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Gotchas**

Non-schema failures may reject with a runtime failure instead of
`SchemaError`.

**See**

- `SchemaParser.decodeUnknownPromise` for the adapter that rejects with an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1506)

Since v3.10.0