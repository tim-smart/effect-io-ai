Package: `effect`<br />
Module: `Model`<br />

## Model.Sensitive

Variant field type for a sensitive value that is available to database variants
and omitted from all JSON variants.

**Signature**

```ts
export interface Sensitive<S extends Schema.Top> extends
  VariantSchema.Field<{
    readonly select: S
    readonly insert: S
    readonly update: S
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L272)

Since v4.0.0