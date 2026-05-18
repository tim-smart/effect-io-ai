Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeUpdateFromDate

Variant field type for a UTC date-time stored as a JavaScript `Date` in
database variants, encoded as a string for JSON, and defaulted on inserts and
updates.

**Signature**

```ts
export interface DateTimeUpdateFromDate extends
  VariantSchema.Field<{
    readonly select: Schema.DateTimeUtcFromDate
    readonly insert: VariantSchema.Overrideable<Schema.DateTimeUtcFromDate>
    readonly update: VariantSchema.Overrideable<Schema.DateTimeUtcFromDate>
    readonly json: Schema.DateTimeUtcFromString
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L584)

Since v4.0.0