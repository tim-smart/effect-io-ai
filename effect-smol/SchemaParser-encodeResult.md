Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeResult

Creates an encoder for input already typed as the schema's decoded `Type`,
reporting failure safely as a `Result`.

**When to use**

Use when the input is already typed as the schema's decoded `Type` and
encoding failures should be returned as a `Result` instead of thrown or run in
`Effect`.

**Details**

The returned function produces `Result.succeed` with the schema's `Encoded`
value on success or `Result.fail` with a `SchemaIssue.Issue` on encoding
failure.

**See**

- `encodeUnknownResult` for the same `Result` shape when the input is not already typed

**Signature**

```ts
declare const encodeResult: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Result.Result<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L829)

Since v4.0.0