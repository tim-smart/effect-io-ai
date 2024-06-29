# productManyComposition

Returns a default `productMany` composition.

To import and use `productManyComposition` from the "SemiProduct" module:

```ts
import * as SemiProduct from "@effect/typeclass/SemiProduct"
// Can be accessed like this
SemiProduct.productManyComposition
```

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
