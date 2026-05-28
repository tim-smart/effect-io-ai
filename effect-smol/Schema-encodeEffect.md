Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeEffect

Encodes a typed input (the schema's `Type`) against a schema, returning an
`Effect` that succeeds with the encoded value or fails with a
`SchemaError`.

**When to use**

Use when the input is already typed as the schema's `Type`.

**Details**

For `unknown` input use `encodeUnknownEffect`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeEffect: <S extends Top>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaError, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1565)

Since v4.0.0