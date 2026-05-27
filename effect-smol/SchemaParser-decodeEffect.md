Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeEffect

Creates an effectful decoder for input already typed as the schema's `Encoded`
type.

**When to use**

Use when the input is already typed as the schema's `Encoded` type and
decoding should stay in `Effect`, including parse failures and required
decoding services.

**Details**

The returned function succeeds with the decoded `Type` or fails with a
`SchemaIssue.Issue`, preserving any decoding service requirements in the
returned `Effect`.

**See**

- `decodeUnknownEffect` for untyped boundary input
- `encodeEffect` for the opposite direction

**Signature**

```ts
declare const decodeEffect: <S extends Schema.Top>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Effect.Effect<S["Type"], Issue.Issue, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L283)

Since v4.0.0