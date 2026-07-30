Package: `@effect/typeclass`<br />
Module: `SemiProduct`<br />

## SemiProduct.productMany

Returns a default `productMany` implementation.

**Signature**

```ts
declare const productMany: <F extends TypeLambda>(map: Covariant<F>["map"], product: SemiProduct<F>["product"]) => SemiProduct<F>["productMany"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiProduct.ts#L32)

Since v0.24.0