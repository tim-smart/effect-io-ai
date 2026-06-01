Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodePromise

Encodes a typed input (the schema's `Type`) against a schema, returning a
`Promise` that resolves with the encoded value or rejects with a
`SchemaError`.

**When to use**

Use when you already have a value typed as the schema's `Type` and need
encoding to return a JavaScript `Promise` that rejects with `SchemaError`.

**Details**

For `unknown` input use `encodeUnknownPromise`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodePromise` for the adapter that rejects with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodePromise: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1857)

Since v3.10.0