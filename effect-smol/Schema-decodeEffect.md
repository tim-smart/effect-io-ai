Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeEffect

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning an `Effect` that succeeds with the decoded value or fails with a
`SchemaError`. Use this when the input is already typed; for `unknown`
input use `decodeUnknownEffect`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const decodeEffect: <S extends Top>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Effect.Effect<S["Type"], SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1249)

Since v4.0.0