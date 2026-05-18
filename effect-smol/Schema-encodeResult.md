Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeResult

Encodes a typed input (the schema's `Type`) against a schema, returning a
`Result` that succeeds with the encoded value or fails with a schema issue.
For `unknown` input use `encodeUnknownResult`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeResult: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Result_.Result<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1467)

Since v4.0.0