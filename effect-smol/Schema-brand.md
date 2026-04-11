Package: `effect`<br />
Module: `Schema`<br />

## Schema.brand

The output type of `brand`, intersecting the schema's `Type` with one or
more `Brand.Brand` tags.

**Signature**

```ts
export interface brand<S extends Top, B> extends
  Bottom<
    S["Type"] & DistributeBrands<B>,
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    brand<S, B>,
    S["~type.make.in"],
    S["Type"] & DistributeBrands<B>,
    S["~type.parameters"],
    S["Type"] & DistributeBrands<B>,
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly schema: S
  readonly identifier: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3748)

Since v4.0.0