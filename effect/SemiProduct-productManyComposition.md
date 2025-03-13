Package: `@effect/typeclass`<br />
Module: `SemiProduct`<br />

## SemiProduct.productManyComposition

Returns a default `productMany` composition.

**Signature**

```ts
declare const productManyComposition: <F extends TypeLambda, G extends TypeLambda>(F: SemiApplicative<F>, G: SemiProduct<G>) => <FR, FO, FE, GR, GO, GE, A>(self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>, collection: Iterable<Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>>) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, [A, ...Array<A>]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/SemiProduct.ts#L75)

Since v0.24.0