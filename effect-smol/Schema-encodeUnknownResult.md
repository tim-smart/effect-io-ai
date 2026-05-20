Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownResult

Encodes an `unknown` input against a schema, returning a `Result` that
succeeds with the encoded value or fails with a schema issue. For typed input
use `encodeResult`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeUnknownResult: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Result_.Result<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1494)

Since v4.0.0