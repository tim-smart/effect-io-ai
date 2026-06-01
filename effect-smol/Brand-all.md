Package: `effect`<br />
Module: `Brand`<br />

## Brand.all

Combines one or more brand constructors to form a single branded type.

**When to use**

Use to require an input to satisfy every runtime check collected by the
provided brand constructors.

**Details**

If the provided constructors contain runtime checks, the combined
constructor succeeds only when all checks pass. If no runtime checks are
present, it behaves as a nominal constructor.

**Signature**

```ts
declare const all: <Brands extends readonly [Constructor<any>, ...Array<Constructor<any>>]>(...brands: Brand.EnsureCommonBase<Brands>) => Constructor<Types.UnionToIntersection<{ [B in keyof Brands]: Brand.FromConstructor<Brands[B]>; }[number]> extends infer X extends Brand<any> ? X : Brand<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L352)

Since v2.0.0