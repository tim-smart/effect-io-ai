Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeInsertFromDate

Variant field type for a UTC date-time stored as a JavaScript `Date` in
database variants, encoded as a string for JSON, and defaulted on insert.

**Signature**

```ts
export interface DateTimeInsertFromDate extends
  VariantSchema.Field<{
    readonly select: Schema.DateTimeUtcFromDate
    readonly insert: VariantSchema.Overrideable<Schema.DateTimeUtcFromDate>
    readonly json: Schema.DateTimeUtcFromString
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L515)

Since v4.0.0