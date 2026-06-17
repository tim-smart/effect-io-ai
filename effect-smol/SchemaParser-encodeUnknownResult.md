Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownResult

Creates an encoder for `unknown` input that reports failure safely as a
`Result`.

**When to use**

Use when encoding values from an unknown or dynamically typed boundary
synchronously, and you want `SchemaIssue.Issue` failures returned as `Result`
data.

**Details**

The returned function produces `Result.succeed` with the schema's `Encoded`
value on success or `Result.fail` with a `SchemaIssue.Issue` on encoding
failure.

**Gotchas**

This adapter runs synchronously. Causes made entirely of schema issues become
`Result.fail`, but causes that contain defects, interruptions, or asynchronous
work at this synchronous boundary throw instead.

**See**

- `encodeResult` for input already typed as the schema's decoded `Type`
- `encodeUnknownEffect` for effectful encoding, including schemas with encoding service requirements

**Signature**

```ts
declare const encodeUnknownResult: <S extends Schema.Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Result.Result<S["Encoded"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L806)

Since v4.0.0