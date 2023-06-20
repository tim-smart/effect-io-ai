# reduceWhile

Folds over the elements in this chunk from the left, stopping the fold early
when the predicate is not satisfied.

To import and use `reduceWhile` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.reduceWhile
```

**Signature**

```ts
export declare const reduceWhile: {
  <A, R, E, Z>(zero: Z, predicate: Predicate<Z>, f: (s: Z, a: A) => Effect<R, E, Z>): (
    elements: Iterable<A>
  ) => Effect<R, E, Z>
  <A, R, E, Z>(elements: Iterable<A>, zero: Z, predicate: Predicate<Z>, f: (s: Z, a: A) => Effect<R, E, Z>): Effect<
    R,
    E,
    Z
  >
}
```
