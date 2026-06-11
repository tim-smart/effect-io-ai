Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownResult

Creates a decoder for `unknown` input that reports failure safely as a
`Result`.

**When to use**

Use when decoding untyped boundary input and you want `SchemaIssue.Issue`
failures returned as data in a `Result`.

**Details**

The returned function produces `Result.succeed` with the decoded `Type` on
success or `Result.fail` with a `SchemaIssue.Issue` on decoding failure.

**Gotchas**

This adapter runs synchronously. Schema issues become `Result.fail`, but async
decoding or defects can still throw.

**See**

- `decodeResult` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for effectful or service-requiring decoding

**Signature**

```ts
declare const decodeUnknownResult: <S extends Schema.Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Result.Result<S["Type"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L414)

Since v4.0.0