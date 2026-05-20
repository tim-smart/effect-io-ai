Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeSync

Creates a synchronous encoder for input already typed as the schema's decoded
`Type`.

**Details**

The returned function returns the schema's `Encoded` value on success and throws
an `Error` with the `SchemaIssue.Issue` in its `cause` on encoding failure.

**Signature**

```ts
declare const encodeSync: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L620)

Since v3.10.0