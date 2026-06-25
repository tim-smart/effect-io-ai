Package: `effect`<br />
Module: `Schema`<br />

## Schema.brand

Type-level representation returned by `brand`.

**Signature**

```ts
export interface brand<S extends Constraint, B> extends
  BottomLazy<
    S["ast"],
    brand<S, B>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"] & DistributeBrands<B>
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["Type"] & DistributeBrands<B>
  readonly "Iso": S["Type"] & DistributeBrands<B>
  readonly schema: S
  readonly identifier: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5023)

Since v3.10.0