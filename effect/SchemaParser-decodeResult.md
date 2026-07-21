Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeResult

Creates a decoder for input already typed as the schema's `Encoded` type,
reporting failure safely as a `Result`.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and want
schema decoding failures represented as `Result.fail` with `SchemaIssue.Issue`.

**Details**

The returned function produces `Result.succeed` with the decoded `Type` on
success or `Result.fail` with a `SchemaIssue.Issue` on decoding failure.

**Gotchas**

This synchronous adapter returns `Result.fail` for causes made entirely of
schema issues, but causes that contain defects, interruptions, or other
non-schema reasons throw instead.

**See**

- `decodeUnknownResult` for untyped input with the same `Result` shape
- `decodeEffect` for effectful or service-requiring decoding

**Signature**

```ts
declare const decodeResult: <S extends Schema.ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Result.Result<S["Type"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L508)

Since v4.0.0