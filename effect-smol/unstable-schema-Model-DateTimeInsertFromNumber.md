Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeInsertFromNumber

Variant field type for a UTC date-time encoded as milliseconds and defaulted to
the current time on insert.

**Signature**

```ts
export interface DateTimeInsertFromNumber extends
  VariantSchema.Field<{
    readonly select: Schema.DateTimeUtcFromMillis
    readonly insert: VariantSchema.Overrideable<Schema.DateTimeUtcFromMillis>
    readonly json: Schema.DateTimeUtcFromMillis
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L539)

Since v4.0.0