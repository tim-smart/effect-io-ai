Package: `effect`<br />
Module: `Model`<br />

## Model.FieldOption

Convert a field to one that is optional for all variants.

For the database variants, it will accept `null`able values.
For the JSON variants, it will also accept missing keys.

**Signature**

```ts
export interface FieldOption<S extends Schema.Top> extends
  VariantSchema.Field<{
    readonly select: Schema.OptionFromNullOr<S>
    readonly insert: Schema.OptionFromNullOr<S>
    readonly update: Schema.OptionFromNullOr<S>
    readonly json: optionalOption<S>
    readonly jsonCreate: optionalOption<S>
    readonly jsonUpdate: optionalOption<S>
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L265)

Since v4.0.0