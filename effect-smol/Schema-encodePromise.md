Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodePromise

Encodes a typed input (the schema's `Type`) against a schema, returning a
`Promise` that resolves with the encoded value or rejects with a
`SchemaError`. For `unknown` input use `encodeUnknownPromise`.

**Signature**

```ts
declare const encodePromise: <S extends Encoder<unknown>>(schema: S) => (input: S["Type"], options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1400)

Since v4.0.0