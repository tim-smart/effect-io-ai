Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownPromise

Encodes an `unknown` input against a schema, returning a `Promise` that
resolves with the encoded value or rejects with a `SchemaError` for
schema mismatches.

**When to use**

Use when you need encoding of unknown input to return a JavaScript `Promise`
that rejects with `SchemaError` for schema mismatches.

**Details**

For values already typed as the schema's `Type` use `encodePromise`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Gotchas**

Non-schema failures may reject with a runtime failure instead of
`SchemaError`.

**See**

- `SchemaParser.encodeUnknownPromise` for the adapter that rejects with an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const encodeUnknownPromise: <S extends ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2101)

Since v3.10.0