Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeResult

Creates a decoder for input already typed as the schema's `Encoded` type,
returning a `Result`.

**When to use**

Use when the input is already typed as the schema's `Encoded` type and you
want schema decoding failures represented as `Result.fail`.

**Details**

The returned function produces `Result.succeed` with the decoded `Type` on
success or `Result.fail` with a `SchemaIssue.Issue` on decoding failure.

**Gotchas**

This synchronous adapter returns `Result.fail` for schema issues, but async
decoding or other non-schema failures can still throw.

**See**

- `decodeUnknownResult` for untyped input with the same `Result` shape
- `decodeEffect` for effectful or service-requiring decoding

**Signature**

```ts
declare const decodeResult: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Result.Result<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L509)

Since v4.0.0