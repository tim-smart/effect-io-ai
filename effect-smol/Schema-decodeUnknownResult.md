Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownResult

Decodes an `unknown` input against a schema, returning a `Result` that
succeeds with the decoded value or fails with a schema issue. For typed input
use `decodeResult`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const decodeUnknownResult: <S extends Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Result_.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1244)

Since v4.0.0