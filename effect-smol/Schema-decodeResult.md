Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeResult

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning a `Result` that succeeds with the decoded value or fails with a
schema issue.

**When to use**

Use when typed input should be decoded into a `Result` with structured issue
data.

**Details**

For `unknown` input use `decodeUnknownResult`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const decodeResult: <S extends Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Result_.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1406)

Since v4.0.0