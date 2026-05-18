Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeResult

Creates an encoder for input already typed as the schema's decoded `Type`,
returning a `Result`.

The returned function produces `Result.succeed` with the schema's `Encoded`
value on success or `Result.fail` with a `SchemaIssue.Issue` on encoding
failure.

**Signature**

```ts
declare const encodeResult: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Result.Result<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L534)

Since v4.0.0