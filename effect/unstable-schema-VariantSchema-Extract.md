Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Extract

Computes the schema type produced by extracting a single variant from a variant
schema struct.

**Signature**

```ts
type Extract<V, A, IsDefault> = [A] extends [
  Struct<infer Fields>
] ? IsDefault extends true ? [A] extends [Schema.Top] ? A : Schema.Struct<Struct_.Simplify<ExtractFields<V, Fields>>>
  : Schema.Struct<Struct_.Simplify<ExtractFields<V, Fields>>>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/VariantSchema.ts#L192)

Since v4.0.0