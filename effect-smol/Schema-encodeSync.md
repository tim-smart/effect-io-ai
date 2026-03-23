Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeSync

Encodes a typed input (the schema's `Type`) against a schema synchronously,
throwing a `SchemaError` on failure. For `unknown` input use
`encodeUnknownSync`.

**Signature**

```ts
declare const encodeSync: <S extends Encoder<unknown>>(schema: S) => (input: S["Type"], options?: AST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1423)

Since v4.0.0