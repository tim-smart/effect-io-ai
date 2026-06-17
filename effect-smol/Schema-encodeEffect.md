Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeEffect

Encodes a typed input (the schema's `Type`) against a schema, returning an
`Effect` that succeeds with the encoded value or fails with a
`SchemaError`.

**When to use**

Use when you need to encode input already typed as the schema's `Type` in
an `Effect` whose failure channel is `SchemaError`.

**Details**

For `unknown` input use `encodeUnknownEffect`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.encodeEffect` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeEffect: <S extends Top>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaError, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1690)

Since v4.0.0