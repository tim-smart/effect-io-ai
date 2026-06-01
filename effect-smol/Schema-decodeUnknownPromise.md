Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownPromise

Decodes an `unknown` input against a schema, returning a `Promise` that
resolves with the decoded value or rejects with a `SchemaError`.

**When to use**

Use when you need decoding of unknown input to return a JavaScript `Promise`
that rejects with `SchemaError`.

**Details**

For input already typed as the schema's `Encoded` type use
`decodePromise`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.decodeUnknownPromise` for the adapter that rejects with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1472)

Since v3.10.0