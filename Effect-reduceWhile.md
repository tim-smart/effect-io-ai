# reduceWhile

Folds over the elements in this chunk from the left, stopping the fold early
when the predicate is not satisfied.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.reduceWhile`.

### Signature

```typescript
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
