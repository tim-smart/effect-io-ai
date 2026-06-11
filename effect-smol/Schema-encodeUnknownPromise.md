Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownPromise

Encodes an `unknown` input against a schema, returning a `Promise` that
resolves with the encoded value or rejects with a `SchemaError`.

**When to use**

Use when you need encoding of unknown input to return a JavaScript `Promise`
that rejects with `SchemaError`.

**Details**

For values already typed as the schema's `Type` use `encodePromise`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeUnknownPromise` for the adapter that rejects with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeUnknownPromise: <S extends Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1757)

Since v3.10.0