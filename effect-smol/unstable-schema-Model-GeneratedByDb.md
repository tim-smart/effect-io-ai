Package: `effect`<br />
Module: `Model`<br />

## Model.GeneratedByDb

Variant field type for a database-generated column that is present in select,
update, and read JSON variants but omitted from insert variants.

**Signature**

```ts
export interface GeneratedByDb<S extends Schema.Top> extends
  VariantSchema.Field<{
    readonly select: S
    readonly json: S
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L203)

Since v4.0.0