Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownResult

Encodes an `unknown` input against a schema, returning a `Result` that
succeeds with the encoded value or fails with a `SchemaError` for schema
mismatches.

**When to use**

Use when you do not know the input type statically and want schema mismatches
returned as `Result.fail` with `SchemaError`.

**Details**

For values already typed as the schema's `Type` use `encodeResult`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.
Schema mismatches are returned as `Result.fail` with `SchemaError`.

**Gotchas**

Only causes made entirely of schema issues are returned as `Result.fail`.
Causes that contain defects, interruptions, or other non-schema reasons throw
instead.

**See**

- `SchemaParser.encodeUnknownResult` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeUnknownResult: <S extends ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Result_.Result<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2037)

Since v4.0.0