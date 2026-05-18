Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeUpdate

Variant field type for a UTC date-time stored as a string and defaulted to the
current time on both inserts and updates.

**Signature**

```ts
export interface DateTimeUpdate extends
  VariantSchema.Field<{
    readonly select: Schema.DateTimeUtcFromString
    readonly insert: VariantSchema.Overrideable<Schema.DateTimeUtcFromString>
    readonly update: VariantSchema.Overrideable<Schema.DateTimeUtcFromString>
    readonly json: Schema.DateTimeUtcFromString
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L550)

Since v4.0.0