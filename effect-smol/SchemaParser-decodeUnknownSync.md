Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownSync

Creates a synchronous decoder for `unknown` input.

**When to use**

Use to decode untrusted or dynamically typed input at a synchronous boundary
where invalid data should be reported by throwing.

**Details**

The returned function returns the decoded `Type` on success and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` on decoding failure.

**See**

- `decodeSync` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for preserving decoding failures in `Effect`
- `decodeUnknownResult` for returning schema issues as data

**Signature**

```ts
declare const decodeUnknownSync: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L536)

Since v3.10.0