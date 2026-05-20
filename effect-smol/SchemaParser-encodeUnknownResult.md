Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownResult

Creates an encoder for `unknown` input that returns a `Result`.

**Details**

The returned function produces `Result.succeed` with the schema's `Encoded`
value on success or `Result.fail` with a `SchemaIssue.Issue` on encoding
failure.

**Signature**

```ts
declare const encodeUnknownResult: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Result.Result<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L565)

Since v4.0.0