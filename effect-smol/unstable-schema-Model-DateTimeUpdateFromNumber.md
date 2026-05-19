Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeUpdateFromNumber

Variant field type for a UTC date-time encoded as milliseconds and defaulted to
the current time on both inserts and updates.

**Signature**

```ts
export interface DateTimeUpdateFromNumber extends
  VariantSchema.Field<{
    readonly select: Schema.DateTimeUtcFromMillis
    readonly insert: VariantSchema.Overrideable<Schema.DateTimeUtcFromMillis>
    readonly update: VariantSchema.Overrideable<Schema.DateTimeUtcFromMillis>
    readonly json: Schema.DateTimeUtcFromMillis
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L615)

Since v4.0.0