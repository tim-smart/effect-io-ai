# partitionMapComposition

Returns a default binary `partitionMap` composition.

Part of the `Filterable` module, imported from `@effect/data/typeclass/Filterable`.

**Signature**

```ts
export declare const partitionMapComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Covariant<F>,
  G: Filterable<G>
) => <FR, FO, FE, GR, GO, GE, A, B, C>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  f: (a: A) => Either<B, C>
) => [Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>, Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, C>>]
```
