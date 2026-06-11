Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Union.Variants

Computes a union schema for each variant from a list of variant schema structs.

**Signature**

```ts
type Union.Variants<Members, Variants> = {
    readonly [Variant in Variants]: Schema.Union<
      {
        [K in keyof Members]: Extract<Variant, Members[K]>
      }
    >
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L328)

Since v4.0.0