Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownPromise

Creates a Promise-based decoder for `unknown` input.

**When to use**

Use when decoding untyped input with a service-free schema at a JavaScript
`Promise` boundary.

**Details**

The returned function resolves with the decoded `Type` on success and rejects
with a `SchemaIssue.Issue` on decoding failure.

**See**

- `decodePromise` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for schemas that require decoding services or when failures should remain in `Effect`

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L308)

Since v3.10.0