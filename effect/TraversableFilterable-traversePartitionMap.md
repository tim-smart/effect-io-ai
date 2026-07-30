Package: `@effect/typeclass`<br />
Module: `TraversableFilterable`<br />

## TraversableFilterable.traversePartitionMap

Returns a default binary `traversePartitionMap` implementation.

**Signature**

```ts
declare const traversePartitionMap: <T extends TypeLambda>(T: Traversable<T> & Covariant<T> & Filterable<T>) => <F extends TypeLambda>(F: Applicative<F>) => <TR, TO, TE, A, R, O, E, B, C>(self: Kind<T, TR, TO, TE, A>, f: (a: A) => Kind<F, R, O, E, Either<C, B>>) => Kind<F, R, O, E, [Kind<T, TR, TO, TE, B>, Kind<T, TR, TO, TE, C>]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/TraversableFilterable.ts#L55)

Since v0.24.0