Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownPromise

Creates a Promise-based encoder for `unknown` input.

**Details**

The returned function resolves with the schema's `Encoded` value on success and
rejects with a `SchemaIssue.Issue` on encoding failure.

**Signature**

```ts
declare const encodeUnknownPromise: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L460)

Since v3.10.0