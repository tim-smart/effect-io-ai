# traversePartitionMap

Returns a default binary `traversePartitionMap` implementation.

To import and use `traversePartitionMap` from the "TraversableFilterable" module:

```ts
import * as TraversableFilterable from "@effect/typeclass/TraversableFilterable"
// Can be accessed like this
TraversableFilterable.traversePartitionMap
```

**Signature**

```ts
export declare const traversePartitionMap: <T extends TypeLambda>(
  T: Traversable<T> & Covariant<T> & filterable.Filterable<T>
) => <F extends TypeLambda>(
  F: Applicative<F>
) => <TR, TO, TE, A, R, O, E, B, C>(
  self: Kind<T, TR, TO, TE, A>,
  f: (a: A) => Kind<F, R, O, E, Either<B, C>>
) => Kind<F, R, O, E, [Kind<T, TR, TO, TE, B>, Kind<T, TR, TO, TE, C>]>
```
