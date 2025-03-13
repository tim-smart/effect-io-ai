Package: `effect`<br />
Module: `Brand`<br />

## Brand.Brand.FromConstructor

A utility type to extract a branded type from a `Brand.Constructor`.

**Signature**

```ts
type FromConstructor<A> = A extends Brand.Constructor<infer B> ? B : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Brand.ts#L119)

Since v2.0.0