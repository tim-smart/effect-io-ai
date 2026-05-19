Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownResult

Creates a decoder for `unknown` input that returns a `Result`.

The returned function produces `Result.succeed` with the decoded `Type` on
success or `Result.fail` with a `SchemaIssue.Issue` on decoding failure.

**Signature**

```ts
declare const decodeUnknownResult: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Result.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L320)

Since v4.0.0