Package: `effect`<br />
Module: `Model`<br />

## Model.fields

Returns the variant field definitions stored on a model or variant struct.

**Signature**

```ts
declare const fields: <A extends VariantSchema.Struct<any>>(self: A) => A[typeof VariantSchema.TypeId]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L175)

Since v4.0.0