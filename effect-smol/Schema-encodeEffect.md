Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeEffect

Encodes a typed input (the schema's `Type`) against a schema, returning an
`Effect` that succeeds with the encoded value or fails with a
`SchemaError`. Use this when the input is already typed; for `unknown`
input use `encodeUnknownEffect`.

**Signature**

```ts
declare const encodeEffect: <S extends Top>(schema: S) => (input: S["Type"], options?: AST.ParseOptions) => Effect.Effect<S["Encoded"], SchemaError, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1303)

Since v4.0.0