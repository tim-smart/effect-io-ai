Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand.Unbranded

A utility type to extract the value type from a brand.

**Signature**

```ts
type Unbranded<P> = P extends infer Q & Brands<P> ? Q : P
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L127)

Since v2.0.0