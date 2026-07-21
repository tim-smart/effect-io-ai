Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownPromise

Creates a Promise-based decoder for `unknown` input.

**When to use**

Use when you need to decode untyped input with a service-free schema and
return a JavaScript `Promise`.

**Details**

The returned function resolves with the decoded `Type` on success and rejects
with an `Error` whose cause is a `SchemaIssue.Issue` on decoding failure.

**Gotchas**

Causes that contain defects, interruptions, or other non-schema reasons reject
with an `Error` whose cause is the underlying `Cause`.

**See**

- `decodePromise` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for schemas that require decoding services or when failures should remain in `Effect`

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Schema.ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L328)

Since v3.10.0