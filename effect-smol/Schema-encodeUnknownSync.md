Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownSync

Encodes an `unknown` input against a schema synchronously, throwing a
`SchemaError` on failure. Use this when you want to serialize data at a
boundary and treat a schema mismatch as an unrecoverable error. For
non-throwing alternatives see `encodeUnknownOption`,
`encodeUnknownExit`, or `encodeUnknownEffect`. For typed input
use `encodeSync`.

**Signature**

```ts
declare const encodeUnknownSync: <S extends Encoder<unknown>>(schema: S) => (input: unknown, options?: AST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1433)

Since v4.0.0