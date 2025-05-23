Package: `@effect/typeclass`<br />
Module: `SemiProduct`<br />

## SemiProduct.productComposition

Returns a default `product` composition.

**Signature**

```ts
declare const productComposition: <F extends TypeLambda, G extends TypeLambda>(F: SemiApplicative<F>, G: SemiProduct<G>) => <FR1, FO1, FE1, GR1, GO1, GE1, A, FR2, FO2, FE2, GR2, GO2, GE2, B>(self: Kind<F, FR1, FO1, FE1, Kind<G, GR1, GO1, GE1, A>>, that: Kind<F, FR2, FO2, FE2, Kind<G, GR2, GO2, GE2, B>>) => Kind<F, FR1 & FR2, FO1 | FO2, FE1 | FE2, Kind<G, GR1 & GR2, GO1 | GO2, GE1 | GE2, [A, B]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiProduct.ts#L55)

Since v0.24.0