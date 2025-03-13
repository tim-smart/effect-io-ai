Package: `@effect/typeclass`<br />
Module: `TraversableFilterable`<br />

## TraversableFilterable.traverseFilterMap

Returns a default binary `traverseFilterMap` implementation.

**Signature**

```ts
declare const traverseFilterMap: <T extends TypeLambda>(T: Traversable<T> & Filterable<T>) => <F extends TypeLambda>(F: Applicative<F>) => <TR, TO, TE, A, R, O, E, B>(self: Kind<T, TR, TO, TE, A>, f: (a: A) => Kind<F, R, O, E, Option<B>>) => Kind<F, R, O, E, Kind<T, TR, TO, TE, B>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/TraversableFilterable.ts#L71)

Since v0.24.0