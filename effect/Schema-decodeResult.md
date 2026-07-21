Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeResult

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning a `Result` that succeeds with the decoded value or fails with a
`SchemaError` for schema mismatches.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and want
schema mismatches returned as `Result.fail` with `SchemaError`.

**Details**

For `unknown` input use `decodeUnknownResult`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.
Schema mismatches are returned as `Result.fail` with `SchemaError`.

**Gotchas**

Only causes made entirely of schema issues are returned as `Result.fail`.
Causes that contain defects, interruptions, or other non-schema reasons throw
instead.

**See**

- `SchemaParser.decodeResult` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeResult: <S extends ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Result_.Result<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1649)

Since v4.0.0