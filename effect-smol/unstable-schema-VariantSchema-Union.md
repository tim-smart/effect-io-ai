Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Union

Union schema over the default schemas of a list of variant schema structs.

**Signature**

```ts
export interface Union<Members extends ReadonlyArray<Struct<any>>> extends
  Schema.Union<
    {
      readonly [K in keyof Members]: [Members[K]] extends [Schema.Top] ? Members[K] : never
    }
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L308)

Since v4.0.0