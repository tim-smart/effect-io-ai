# filterMapComposition

Returns a default binary `filterMap` composition.

Part of the `Filterable` module, imported from `@effect/data/typeclass/Filterable`.

**Signature**

```ts
export declare const filterMapComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Covariant<F>,
  G: Filterable<G>
) => <FR, FO, FE, GR, GO, GE, A, B>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  f: (a: A) => Option<B>
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```
