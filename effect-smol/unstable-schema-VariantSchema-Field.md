Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Field

Pipeable collection of variant-specific schemas for a single logical field.

**Signature**

```ts
export interface Field<in out A extends Field.Config> extends Pipeable {
  readonly [FieldTypeId]: typeof FieldTypeId
  readonly schemas: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L115)

Since v4.0.0