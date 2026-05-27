Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeSync

Creates a synchronous decoder for input already typed as the schema's `Encoded`
type.

**When to use**

Use to decode values already typed as the schema's `Encoded` input when
decoding failure should be reported by throwing an `Error`.

**Details**

The returned function returns the decoded `Type` on success and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` on decoding failure.

**See**

- `decodeUnknownSync` for untrusted or dynamically typed input
- `decodeResult` for returning schema issues as data
- `decodeEffect` for preserving decoding failures in `Effect`

**Signature**

```ts
declare const decodeSync: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L562)

Since v3.10.0