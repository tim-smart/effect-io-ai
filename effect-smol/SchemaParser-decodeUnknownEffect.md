Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownEffect

Creates an effectful decoder for `unknown` input.

The returned function succeeds with the schema's decoded `Type` or fails with a
`SchemaIssue.Issue`. Decoding service requirements are preserved in the returned
`Effect`. Parse options may be provided when creating the decoder and overridden
when applying it.

**Signature**

```ts
declare const decodeUnknownEffect: <S extends Schema.Top>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Type"], Issue.Issue, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L192)

Since v4.0.0