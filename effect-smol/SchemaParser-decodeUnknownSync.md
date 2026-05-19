Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownSync

Creates a synchronous decoder for `unknown` input.

The returned function returns the decoded `Type` on success and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` on decoding failure.

**Signature**

```ts
declare const decodeUnknownSync: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L351)

Since v3.10.0