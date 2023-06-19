# productManyComposition

Returns a default `productMany` composition.

Part of the `SemiProduct` module, imported from `@effect/data/typeclass/SemiProduct`.

**Signature**

```ts
export declare const productManyComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: SemiApplicative<F>,
  G: SemiProduct<G>
) => <FR, FO, FE, GR, GO, GE, A>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  collection: Iterable<Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>>
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, [A, ...A[]]>>
```
