Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.ExtractFields

Computes the `Schema.Struct` field map for a variant by selecting matching
field schemas and recursively extracting nested structs.

**Signature**

```ts
type ExtractFields<V, Fields, IsDefault> = {
  readonly [
    K in keyof Fields as [Fields[K]] extends [Field<infer Config>] ? V extends keyof Config ? K
      : never
      : K
  ]: [Fields[K]] extends [Struct<infer _>] ? Extract<V, Fields[K], IsDefault>
    : [Fields[K]] extends [Field<infer Config>] ? [Config[V]] extends [Schema.Top] ? Config[V]
      : never
    : [Fields[K]] extends [Schema.Top] ? Fields[K]
    : never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L173)

Since v4.0.0