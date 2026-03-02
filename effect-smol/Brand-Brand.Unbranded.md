Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand.Unbranded

A utility type to extract the unbranded value type from a brand.

**Signature**

```ts
type Unbranded<B> = B extends infer U & Brands<B> ? U : B
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L120)

Since v2.0.0