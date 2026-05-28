Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownResult

Creates a decoder for `unknown` input that reports failure safely as a
`Result`.

**When to use**

Use when decoding untyped boundary input and you want schema issues returned
as data in a `Result`.

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
declare const decodeUnknownResult: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Result.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L479)

Since v4.0.0