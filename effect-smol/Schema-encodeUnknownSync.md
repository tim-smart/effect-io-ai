Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownSync

Encodes an `unknown` input against a schema synchronously, throwing a
`SchemaError` on failure.

**When to use**

Use when serializing unknown data at a boundary and treating schema
mismatches as unrecoverable errors.

**Details**

For non-throwing alternatives see `encodeUnknownOption`,
`encodeUnknownExit`, or `encodeUnknownEffect`. For typed input
use `encodeSync`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeUnknownSync: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1763)

Since v4.0.0