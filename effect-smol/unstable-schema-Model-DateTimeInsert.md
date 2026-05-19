Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeInsert

Variant field type for a UTC date-time stored as a string, defaulted to the
current time on insert, available for selection, and omitted from updates.

**Signature**

```ts
export interface DateTimeInsert extends
  VariantSchema.Field<{
    readonly select: Schema.DateTimeUtcFromString
    readonly insert: VariantSchema.Overrideable<Schema.DateTimeUtcFromString>
    readonly json: Schema.DateTimeUtcFromString
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L458)

Since v4.0.0