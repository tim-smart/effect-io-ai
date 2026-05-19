Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownSync

Creates a synchronous encoder for `unknown` input.

The returned function returns the schema's `Encoded` value on success and throws
an `Error` with the `SchemaIssue.Issue` in its `cause` on encoding failure.

**Signature**

```ts
declare const encodeUnknownSync: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L545)

Since v3.10.0