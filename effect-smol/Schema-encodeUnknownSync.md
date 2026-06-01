Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownSync

Encodes an `unknown` input against a schema synchronously, throwing a
`SchemaError` on failure.

**When to use**

Use when you need to serialize unknown data at a synchronous boundary and
want schema mismatches to throw `SchemaError`.

**Details**

For non-throwing alternatives see `encodeUnknownOption`,
`encodeUnknownExit`, or `encodeUnknownEffect`. For values
already typed as the schema's `Type` use `encodeSync`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeUnknownSync` for the adapter that throws an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const encodeUnknownSync: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1884)

Since v4.0.0