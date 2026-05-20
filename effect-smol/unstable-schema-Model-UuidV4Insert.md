Package: `effect`<br />
Module: `Model`<br />

## Model.UuidV4Insert

Variant field type for a branded string UUID v4 value whose insert variant
generates a UUID by default.

**Signature**

```ts
export interface UuidV4Insert<B extends string> extends
  VariantSchema.Field<{
    readonly select: Schema.brand<Schema.String, B>
    readonly insert: Schema.withConstructorDefault<Schema.brand<Schema.String, B>>
    readonly update: Schema.brand<Schema.String, B>
    readonly json: Schema.brand<Schema.String, B>
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L773)

Since v4.0.0