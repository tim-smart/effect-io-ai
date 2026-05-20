Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownExit

Creates a synchronous decoder for `unknown` input that returns an `Exit`.

**Details**

The returned function produces `Exit.Success` with the decoded `Type` or
`Exit.Failure` with a `SchemaIssue.Issue`.

**Signature**

```ts
declare const decodeUnknownExit: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Exit.Exit<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L278)

Since v4.0.0