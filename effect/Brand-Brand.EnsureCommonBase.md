## Brand.EnsureCommonBase

A utility type that checks that all brands have the same base type.

**Signature**

```ts
type EnsureCommonBase<Brands> = {
    [B in keyof Brands]: Brand.Unbranded<Brand.FromConstructor<Brands[0]>> extends
      Brand.Unbranded<Brand.FromConstructor<Brands[B]>>
      ? Brand.Unbranded<Brand.FromConstructor<Brands[B]>> extends Brand.Unbranded<Brand.FromConstructor<Brands[0]>>
        ? Brands[B]
      : Brands[B]
      : "ERROR: All brands should have the same base type"
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L149)

Since v2.0.0