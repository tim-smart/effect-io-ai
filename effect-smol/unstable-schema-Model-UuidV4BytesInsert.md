Package: `effect`<br />
Module: `Model`<br />

## Model.UuidV4BytesInsert

Variant field type for a branded binary UUID v4 value whose insert variant
generates a UUID by default.

**Signature**

```ts
export interface UuidV4BytesInsert<B extends string> extends
  VariantSchema.Field<{
    readonly select: Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>>, B>
    readonly insert: Schema.withConstructorDefault<Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>>, B>>
    readonly update: Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>>, B>
    readonly json: Schema.brand<Schema.instanceOf<Uint8Array<ArrayBuffer>>, B>
  }>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L719)

Since v4.0.0