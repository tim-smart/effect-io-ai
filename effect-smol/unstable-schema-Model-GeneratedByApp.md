Package: `effect`<br />
Module: `Model`<br />

## Model.GeneratedByApp

Variant field type for an application-generated value that is present in
database variants and read JSON, but omitted from JSON create and update
variants.

**Signature**

```ts
export interface GeneratedByApp<S extends Schema.Top> extends
  VariantSchema.Field<{
    readonly select: S
    readonly insert: S
    readonly update: S
    readonly json: S
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L231)

Since v4.0.0