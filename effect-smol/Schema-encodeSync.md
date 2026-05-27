Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeSync

Encodes a typed input (the schema's `Type`) against a schema synchronously,
throwing a `SchemaError` on failure. For `unknown` input use
`encodeUnknownSync`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeSync: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1605)

Since v4.0.0