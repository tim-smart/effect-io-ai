# traverseComposition

Returns a default binary `traverse` composition.

Part of the `Traversable` module, imported from `@effect/data/typeclass/Traversable`.

**Signature**

```ts
export declare const traverseComposition: <T extends TypeLambda, G extends TypeLambda>(
  T: Traversable<T>,
  G: Traversable<G>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => <TR, TO, TE, GR, GO, GE, A, R, O, E, B>(
  self: Kind<T, TR, TO, TE, Kind<G, GR, GO, GE, A>>,
  f: (a: A) => Kind<F, R, O, E, B>
) => Kind<F, R, O, E, Kind<T, TR, TO, TE, Kind<G, GR, GO, GE, B>>>
```
