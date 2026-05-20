Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeResult

Creates a decoder for input already typed as the schema's `Encoded` type,
returning a `Result`.

**Details**

The returned function produces `Result.succeed` with the decoded `Type` on
success or `Result.fail` with a `SchemaIssue.Issue` on decoding failure.

**Signature**

```ts
declare const decodeResult: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Result.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L367)

Since v4.0.0