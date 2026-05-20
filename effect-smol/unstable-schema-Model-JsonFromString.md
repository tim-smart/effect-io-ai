Package: `effect`<br />
Module: `Model`<br />

## Model.JsonFromString

Variant field type for a JSON value stored as text in database variants and
exposed through the supplied schema in JSON variants.

**Signature**

```ts
export interface JsonFromString<S extends Schema.Top> extends
  VariantSchema.Field<{
    readonly select: Schema.fromJsonString<S>
    readonly insert: Schema.fromJsonString<S>
    readonly update: Schema.fromJsonString<S>
    readonly json: S
    readonly jsonCreate: S
    readonly jsonUpdate: S
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L677)

Since v4.0.0