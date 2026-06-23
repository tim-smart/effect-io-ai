Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownEffect

Creates an effectful decoder for `unknown` input.

**When to use**

Use when you need to decode untyped boundary input in an `Effect` whose
failure channel is `SchemaIssue.Issue`, while preserving transformations
and service requirements.

**Details**

The returned function succeeds with the schema's decoded `Type` or fails with a
`SchemaIssue.Issue`. Decoding service requirements are preserved in the returned
`Effect`. Parse options may be provided when creating the decoder and overridden
when applying it.

**See**

- `decodeEffect` for input already typed as the schema's `Encoded` type

**Signature**

```ts
declare const decodeUnknownEffect: <S extends Schema.Constraint>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Effect.Effect<S["Type"], SchemaIssue.Issue, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L258)

Since v4.0.0