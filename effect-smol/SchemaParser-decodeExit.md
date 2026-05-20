Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeExit

Creates a synchronous decoder for input already typed as the schema's `Encoded`
type, returning an `Exit`.

**Details**

The returned function produces `Exit.Success` with the decoded `Type` or
`Exit.Failure` with a `SchemaIssue.Issue`.

**Signature**

```ts
declare const decodeExit: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Exit.Exit<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L297)

Since v4.0.0