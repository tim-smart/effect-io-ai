Package: `effect`<br />
Module: `Brand`<br />

## Brand.all

Combines two or more brands together to form a single branded type. This API
is useful when you want to validate that the input data passes multiple brand
validators.

**Signature**

```ts
declare const all: <Brands extends readonly [Constructor<any>, ...Array<Constructor<any>>]>(...brands: Brand.EnsureCommonBase<Brands>) => Constructor<Types.UnionToIntersection<{ [B in keyof Brands]: Brand.FromConstructor<Brands[B]>; }[number]> extends infer X extends Brand<any> ? X : Brand<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L229)

Since v2.0.0