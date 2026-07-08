Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeSync

Decodes a typed input (the schema's `Encoded` type) against a schema
synchronously, returning the decoded value or throwing a `SchemaError`
for schema mismatches.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and
want schema mismatches to throw `SchemaError` synchronously.

**Details**

For `unknown` input use `decodeUnknownSync`.
Only service-free schemas can be decoded synchronously. Options may be
provided either when creating the decoder or when applying it; application
options override creation options.

**Gotchas**

Non-schema failures may throw a runtime failure instead of `SchemaError`.

**See**

- `SchemaParser.decodeSync` for the adapter that throws an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const decodeSync: <S extends ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1797)

Since v4.0.0