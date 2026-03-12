Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownPromise

Encodes an `unknown` input against a schema, returning a `Promise` that
resolves with the encoded value or rejects with a `SchemaError`. Useful
for integrating with Promise-based APIs. For typed input use
`encodePromise`.

**Signature**

```ts
declare const encodeUnknownPromise: <S extends Top & { readonly EncodingServices: never; }>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1370)

Since v4.0.0