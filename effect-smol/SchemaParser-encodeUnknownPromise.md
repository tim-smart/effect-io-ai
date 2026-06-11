Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownPromise

Creates a Promise-based encoder for `unknown` input.

**When to use**

Use when you need to encode untrusted or dynamically typed values with a
service-free schema and return a JavaScript `Promise` that rejects with
`SchemaIssue.Issue`.

**Details**

The returned function resolves with the schema's `Encoded` value on success and
rejects with a `SchemaIssue.Issue` on encoding failure.

**See**

- `encodePromise` for input already typed as the schema's decoded `Type`
- `encodeUnknownEffect` for schemas that require encoding services or when failures should remain in `Effect`

**Signature**

```ts
declare const encodeUnknownPromise: <S extends Schema.Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L588)

Since v3.10.0