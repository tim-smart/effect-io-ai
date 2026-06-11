Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.fields

Returns the original field definitions stored on a variant schema struct.

**Signature**

```ts
declare const fields: <A extends Struct<any>>(self: A) => A[typeof TypeId]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L249)

Since v4.0.0