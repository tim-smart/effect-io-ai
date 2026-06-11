Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodePromise

Creates a Promise-based decoder for input already typed as the schema's
`Encoded` type.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and need
decoding to return a JavaScript `Promise` that rejects with `SchemaIssue.Issue`.

**Details**

The returned function resolves with the decoded `Type` on success and rejects
with a `SchemaIssue.Issue` on decoding failure.

**See**

- `decodeUnknownPromise` for untyped input returning a JavaScript `Promise`
- `decodeEffect` for preserving decoding services and failures in `Effect`

**Signature**

```ts
declare const decodePromise: <S extends Schema.Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L307)

Since v3.10.0