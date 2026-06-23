Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeEffect

Creates an effectful encoder for input already typed as the schema's decoded
`Type`.

**When to use**

Use when you need to encode values already typed as the schema's decoded
`Type` in an `Effect` whose failure channel is `SchemaIssue.Issue`, while
preserving service requirements.

**Details**

The returned function succeeds with the schema's `Encoded` value or fails with a
`SchemaIssue.Issue`, preserving any encoding service requirements in the
returned `Effect`.

**See**

- `encodeUnknownEffect` for encoding unknown input before the value is statically typed as the schema's `Type`

**Signature**

```ts
declare const encodeEffect: <S extends Schema.Constraint>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaIssue.Issue, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L631)

Since v4.0.0