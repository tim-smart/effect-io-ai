Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodePromise

Encodes a typed input (the schema's `Type`) against a schema, returning a
`Promise` that resolves with the encoded value or rejects with a
`SchemaError`. For `unknown` input use `encodeUnknownPromise`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodePromise: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1489)

Since v3.10.0