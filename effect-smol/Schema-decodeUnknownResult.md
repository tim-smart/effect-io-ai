Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownResult

Decodes an `unknown` input against a schema, returning a `Promise` that
resolves with the decoded value or rejects with a `SchemaError`. Useful
for integrating with Promise-based APIs. For typed input use
`decodePromise`.

**Signature**

```ts
declare const decodeUnknownResult: <S extends Top & { readonly DecodingServices: never; }>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Result_.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1212)

Since v4.0.0