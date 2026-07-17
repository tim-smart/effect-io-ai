Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Field.ConfigWithKeys

Variant field configuration restricted to an optional subset of the supplied
variant keys.

**Signature**

```ts
type ConfigWithKeys<K> = {
    readonly [P in K]?: Schema.Top
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/VariantSchema.ts#L146)

Since v4.0.0