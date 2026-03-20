Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownResult

Encodes an `unknown` input against a schema, returning a `Promise` that
resolves with the encoded value or rejects with a `SchemaError`. Useful
for integrating with Promise-based APIs. For typed input use
`encodePromise`.

**Signature**

```ts
declare const encodeUnknownResult: <S extends Top & { readonly EncodingServices: never; }>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Result_.Result<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1382)

Since v4.0.0