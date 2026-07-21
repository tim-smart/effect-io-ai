Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownPromise

Creates a Promise-based encoder for `unknown` input.

**When to use**

Use when you need to encode untrusted or dynamically typed values with a
service-free schema and return a JavaScript `Promise`.

**Details**

The returned function resolves with the schema's `Encoded` value on success and
rejects with an `Error` whose cause is a `SchemaIssue.Issue` on encoding failure.

**Gotchas**

Causes that contain defects, interruptions, or other non-schema reasons reject
with an `Error` whose cause is the underlying `Cause`.

**See**

- `encodePromise` for input already typed as the schema's decoded `Type`
- `encodeUnknownEffect` for schemas that require encoding services or when failures should remain in `Effect`

**Signature**

```ts
declare const encodeUnknownPromise: <S extends Schema.ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L666)

Since v3.10.0