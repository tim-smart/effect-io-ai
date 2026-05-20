Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownPromise

Creates a Promise-based decoder for `unknown` input.

**Details**

The returned function resolves with the decoded `Type` on success and rejects
with a `SchemaIssue.Issue` on decoding failure.

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L241)

Since v3.10.0