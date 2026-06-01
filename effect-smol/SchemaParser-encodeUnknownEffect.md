Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownEffect

Creates an effectful encoder for `unknown` input.

**When to use**

Use when you need to encode untyped boundary input in an `Effect` whose
failure channel is `SchemaIssue.Issue`, while preserving service
requirements.

**Details**

The returned function succeeds with the schema's `Encoded` value or fails with a
`SchemaIssue.Issue`. Encoding service requirements are preserved in the returned
`Effect`. Parse options may be provided when creating the encoder and overridden
when applying it.

**See**

- `encodeEffect` for the typed-input variant when the value is already typed as the schema's decoded `Type`

**Signature**

```ts
declare const encodeUnknownEffect: <S extends Schema.Top>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaIssue.Issue, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L560)

Since v4.0.0