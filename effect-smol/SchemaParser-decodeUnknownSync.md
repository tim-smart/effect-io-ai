Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownSync

Creates a synchronous decoder for `unknown` input.

**When to use**

Use to decode untrusted or dynamically typed input at a synchronous boundary
where invalid data should throw an `Error` whose cause is `SchemaIssue.Issue`.

**Details**

The returned function returns the decoded `Type` on success and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` on decoding failure.

**Gotchas**

Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`,
instead of being converted to a schema validation error.

**See**

- `decodeSync` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for preserving decoding failures in `Effect`
- `decodeUnknownResult` for returning schema issues as data

**Signature**

```ts
declare const decodeUnknownSync: <S extends Schema.Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L537)

Since v3.10.0