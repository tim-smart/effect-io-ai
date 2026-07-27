Package: `effect`<br />
Module: `Schema`<br />

## Schema.toJsonSchemaDocument

Returns a JSON Schema document using draft 2020-12.

**Details**

The `options` parameter controls generation details such as additional
properties and synthesized check descriptions; it does not change the draft
target. Declarations are lowered through their `toCodecJson` or `toCodec`
annotation when available before the representation document is compiled.

**Gotchas**

JSON Schema generation is best-effort. Some Effect schema semantics cannot
be represented exactly in JSON Schema, and importing an emitted JSON Schema
may produce an equivalent approximation rather than the original schema
shape. Opaque declarations without a structural codec are represented by an
unconstrained JSON Schema.

**Signature**

```ts
declare const toJsonSchemaDocument: (schema: Constraint, options?: ToJsonSchemaOptions) => JsonSchema.Document<"draft-2020-12">
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L14920)

Since v4.0.0