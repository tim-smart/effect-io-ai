Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeSync

Creates a synchronous decoder for input already typed as the schema's `Encoded`
type.

**When to use**

Use to decode values already typed as the schema's `Encoded` input when
decoding failure should throw an `Error` whose cause is `SchemaIssue.Issue`.

**Details**

The returned function returns the decoded `Type` on success and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` on decoding failure.

**Gotchas**

Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`,
instead of being converted to a schema validation error.

**See**

- `decodeUnknownSync` for untrusted or dynamically typed input
- `decodeResult` for returning schema issues as data
- `decodeEffect` for preserving decoding failures in `Effect`

**Signature**

```ts
declare const decodeSync: <S extends Schema.ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L571)

Since v3.10.0