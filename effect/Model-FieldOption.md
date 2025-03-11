## FieldOption

Convert a field to one that is optional for all variants.

For the database variants, it will accept `null`able values.
For the JSON variants, it will also accept missing keys.

**Signature**

```ts
export interface FieldOption<S extends Schema.Schema.Any> extends
  VariantSchema.Field<{
    readonly select: Schema.OptionFromNullOr<S>
    readonly insert: Schema.OptionFromNullOr<S>
    readonly update: Schema.OptionFromNullOr<S>
    readonly json: Schema.optionalWith<S, { as: "Option" }>
    readonly jsonCreate: Schema.optionalWith<S, { as: "Option"; nullable: true }>
    readonly jsonUpdate: Schema.optionalWith<S, { as: "Option"; nullable: true }>
  }>
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/Model.ts#L269)

Since v1.0.0