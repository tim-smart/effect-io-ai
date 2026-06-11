Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownPromise

Creates a Promise-based decoder for `unknown` input.

**When to use**

Use when you need to decode untyped input with a service-free schema and
return a JavaScript `Promise` that rejects with `SchemaIssue.Issue`.

**Details**

The returned function resolves with the decoded `Type` on success and rejects
with a `SchemaIssue.Issue` on decoding failure.

**See**

- `decodePromise` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for schemas that require decoding services or when failures should remain in `Effect`

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Schema.Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L280)

Since v3.10.0