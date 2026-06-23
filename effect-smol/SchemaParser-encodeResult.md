Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeResult

Creates an encoder for input already typed as the schema's decoded `Type`,
reporting failure safely as a `Result`.

**When to use**

Use when you already have input typed as the schema's decoded `Type` and want
encoding failures returned as `Result.fail` with `SchemaIssue.Issue`.

**Details**

The returned function produces `Result.succeed` with the schema's `Encoded`
value on success or `Result.fail` with a `SchemaIssue.Issue` on encoding
failure.

**Gotchas**

This synchronous adapter returns `Result.fail` for causes made entirely of
schema issues, but causes that contain defects, interruptions, or other
non-schema reasons throw instead.

**See**

- `encodeUnknownResult` for the same `Result` shape when the input is not already typed

**Signature**

```ts
declare const encodeResult: <S extends Schema.ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Result.Result<S["Encoded"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L839)

Since v4.0.0