Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeEffect

Creates an effectful encoder for input already typed as the schema's decoded
`Type`.

**Details**

The returned function succeeds with the schema's `Encoded` value or fails with a
`SchemaIssue.Issue`, preserving any encoding service requirements in the
returned `Effect`.

**Signature**

```ts
declare const encodeEffect: <S extends Schema.Top>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Effect.Effect<S["Encoded"], Issue.Issue, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L443)

Since v4.0.0