Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand.Brands

A utility type to extract the brands from a branded type.

**Signature**

```ts
type Brands<P> = P extends Brand<any> ? Types.UnionToIntersection<
      {
        [k in keyof P[BrandTypeId]]: k extends string | symbol ? Brand<k>
          : never
      }[keyof P[BrandTypeId]]
    >
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L135)

Since v2.0.0