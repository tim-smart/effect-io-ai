# mapComposition

Returns a default `map` composition.

Part of the `Covariant` module, imported from `@effect/data/typeclass/Covariant`.

**Signature**

```ts
export declare const mapComposition: <F extends TypeLambda, G extends TypeLambda>(
  F: Covariant<F>,
  G: Covariant<G>
) => <FR, FO, FE, GR, GO, GE, A, B>(
  self: Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, A>>,
  f: (a: A) => B
) => Kind<F, FR, FO, FE, Kind<G, GR, GO, GE, B>>
```
