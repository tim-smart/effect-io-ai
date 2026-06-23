Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeEffect

Creates an effectful decoder for input already typed as the schema's `Encoded`
type.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and
need an `Effect` whose failure channel is `SchemaIssue.Issue`, while
preserving decoding service requirements.

**Details**

The returned function succeeds with the decoded `Type` or fails with a
`SchemaIssue.Issue`, preserving any decoding service requirements in the
returned `Effect`.

**See**

- `decodeUnknownEffect` for untyped boundary input
- `encodeEffect` for the opposite direction

**Signature**

```ts
declare const decodeEffect: <S extends Schema.Constraint>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Effect.Effect<S["Type"], SchemaIssue.Issue, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L293)

Since v4.0.0