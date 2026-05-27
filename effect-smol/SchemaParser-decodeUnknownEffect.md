Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownEffect

Creates an effectful decoder for `unknown` input.

**When to use**

Use when decoding untyped boundary input while preserving decoding failures,
effectful transformations, and service requirements in an `Effect`.

**Details**

The returned function succeeds with the schema's decoded `Type` or fails with a
`SchemaIssue.Issue`. Decoding service requirements are preserved in the returned
`Effect`. Parse options may be provided when creating the decoder and overridden
when applying it.

**See**

- `decodeEffect` for input already typed as the schema's `Encoded` type

**Signature**

```ts
declare const decodeUnknownEffect: <S extends Schema.Top>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Type"], Issue.Issue, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L251)

Since v4.0.0