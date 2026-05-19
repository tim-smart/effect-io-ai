Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodePromise

Creates a Promise-based encoder for input already typed as the schema's decoded
`Type`.

The returned function resolves with the schema's `Encoded` value on success and
rejects with a `SchemaIssue.Issue` on encoding failure.

**Signature**

```ts
declare const encodePromise: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L436)

Since v3.10.0