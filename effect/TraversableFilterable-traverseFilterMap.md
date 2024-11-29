# traverseFilterMap

Returns a default binary `traverseFilterMap` implementation.

To import and use `traverseFilterMap` from the "TraversableFilterable" module:

ts
import \* as TraversableFilterable from "@effect/typeclass/TraversableFilterable"
// Can be accessed like this
TraversableFilterable.traverseFilterMap
undefined

**Signature**

```ts
export declare const traverseFilterMap: <T extends TypeLambda>(
  T: Traversable<T> & Filterable<T>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => <TR, TO, TE, A, R, O, E, B>(
  self: Kind<T, TR, TO, TE, A>,
  f: (a: A) => Kind<F, R, O, E, Option<B>>
) => Kind<F, R, O, E, Kind<T, TR, TO, TE, B>>
```
