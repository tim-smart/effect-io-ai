Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Field.Config

Map from variant name to the schema used for a field in that variant.

**Signature**

```ts
type Config = {
    readonly [key: string]: Schema.Top | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L135)

Since v4.0.0