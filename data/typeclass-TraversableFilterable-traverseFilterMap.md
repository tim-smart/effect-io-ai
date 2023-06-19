# traverseFilterMap

Returns a default binary `traverseFilterMap` implementation.

Part of the `TraversableFilterable` module, imported from `@effect/data/typeclass/TraversableFilterable`.

**Signature**

```ts
export declare const traverseFilterMap: <T extends TypeLambda>(
  T: Traversable<T> & filterable.Filterable<T>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => <TR, TO, TE, A, R, O, E, B>(
  self: Kind<T, TR, TO, TE, A>,
  f: (a: A) => Kind<F, R, O, E, Option<B>>
) => Kind<F, R, O, E, Kind<T, TR, TO, TE, B>>
```
