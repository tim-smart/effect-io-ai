Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownEffect

Decodes an `unknown` input against a schema, returning an `Effect` that
succeeds with the decoded value or fails with a `SchemaError`. Use this
when the input type is not statically known. Prefer `decodeEffect` when
the input is already typed as the schema's `Encoded` type.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const decodeUnknownEffect: <S extends Top>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Effect.Effect<S["Type"], SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1184)

Since v4.0.0