Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownEffect

Decodes an `unknown` input against a schema, returning an `Effect` that
succeeds with the decoded value or fails with a `SchemaError`. Use this
when the input type is not statically known. Prefer `decodeEffect` when
the input is already typed as the schema's `Encoded` type.

**Signature**

```ts
declare const decodeUnknownEffect: <S extends Top>(schema: S) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Type"], SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1145)

Since v4.0.0