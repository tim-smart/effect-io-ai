# traversePartitionMap

Returns a default binary `traversePartitionMap` implementation.

Part of the `TraversableFilterable` module, imported from `@effect/data/typeclass/TraversableFilterable`.

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
