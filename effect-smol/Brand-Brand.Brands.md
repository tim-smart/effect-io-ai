Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand.Brands

A utility type to extract the brands from a branded type.

**Signature**

```ts
type Brands<B> = Types.UnionToIntersection<
    { [K in Keys<B>]: K extends string ? Brand<K> : never }[Keys<B>]
  >
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L134)

Since v2.0.0