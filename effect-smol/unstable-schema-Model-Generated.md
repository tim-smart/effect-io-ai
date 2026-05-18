Package: `effect`<br />
Module: `Model`<br />

## Model.Generated

Variant field type for a database-generated column that is present in select,
update, and read JSON variants but omitted from insert variants.

**Signature**

```ts
export interface Generated<S extends Schema.Top> extends
  VariantSchema.Field<{
    readonly select: S
    readonly update: S
    readonly json: S
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L187)

Since v4.0.0