Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodePromise

Creates a Promise-based decoder for input already typed as the schema's
`Encoded` type.

**Details**

The returned function resolves with the decoded `Type` on success and rejects
with a `SchemaIssue.Issue` on decoding failure.

**Signature**

```ts
declare const decodePromise: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L260)

Since v3.10.0