Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeSync

Encodes a typed input (the schema's `Type`) against a schema synchronously,
throwing a `SchemaError` on failure.

**When to use**

Use when you already have a value typed as the schema's `Type` and want
schema mismatches to throw `SchemaError` synchronously.

**Details**

For `unknown` input use `encodeUnknownSync`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeSync` for the adapter that throws an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const encodeSync: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1839)

Since v4.0.0