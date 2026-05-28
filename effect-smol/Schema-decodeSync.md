Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeSync

Decodes a typed input (the schema's `Encoded` type) against a schema
synchronously, returning the decoded value or throwing an `Error` whose cause
contains the schema issue.

**When to use**

Use when typed input should be decoded synchronously and schema mismatches
should throw.

**Details**

For `unknown` input use `decodeUnknownSync`.
Only service-free schemas can be decoded synchronously. Options may be
provided either when creating the decoder or when applying it; application
options override creation options.

**Signature**

```ts
declare const decodeSync: <S extends Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1503)

Since v4.0.0