Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeSync

Decodes a typed input (the schema's `Encoded` type) against a schema
synchronously, throwing a `SchemaError` on failure. For `unknown` input
use `decodeUnknownSync`.

**Signature**

```ts
declare const decodeSync: <S extends Decoder<unknown>>(schema: S) => (input: S["Encoded"], options?: AST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1270)

Since v4.0.0