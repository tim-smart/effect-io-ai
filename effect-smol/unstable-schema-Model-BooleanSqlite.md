Package: `effect`<br />
Module: `Model`<br />

## Model.BooleanSqlite

Variant field type for SQLite booleans stored as `0 | 1` in database variants
and exposed as `boolean` in JSON variants.

**Signature**

```ts
export interface BooleanSqlite extends
  VariantSchema.Field<{
    readonly select: Schema.BooleanFromBit
    readonly insert: Schema.BooleanFromBit
    readonly update: Schema.BooleanFromBit
    readonly json: Schema.Boolean
    readonly jsonCreate: Schema.Boolean
    readonly jsonUpdate: Schema.Boolean
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L373)

Since v4.0.0