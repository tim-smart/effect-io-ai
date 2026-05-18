Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownEffect

Creates an effectful encoder for `unknown` input.

The returned function succeeds with the schema's `Encoded` value or fails with a
`SchemaIssue.Issue`. Encoding service requirements are preserved in the returned
`Effect`. Parse options may be provided when creating the encoder and overridden
when applying it.

**Signature**

```ts
declare const encodeUnknownEffect: <S extends Schema.Top>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Encoded"], Issue.Issue, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L387)

Since v4.0.0