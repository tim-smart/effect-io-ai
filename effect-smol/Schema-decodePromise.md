Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodePromise

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning a `Promise` that resolves with the decoded value or rejects with a
`SchemaError`. For `unknown` input use `decodeUnknownPromise`.

**Signature**

```ts
declare const decodePromise: <S extends Top & { readonly DecodingServices: never; }>(schema: S) => (input: S["Encoded"], options?: AST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1234)

Since v4.0.0