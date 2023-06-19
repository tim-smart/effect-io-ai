# groupBy

More powerful version of `Stream.groupByKey`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const groupBy: {
  <A, R2, E2, K, V>(f: (a: A) => Effect.Effect<R2, E2, readonly [K, V]>): <R, E>(
    self: Stream<R, E, A>
  ) => GroupBy.GroupBy<R2 | R, E2 | E, K, V>
  <R, E, A, R2, E2, K, V>(self: Stream<R, E, A>, f: (a: A) => Effect.Effect<R2, E2, readonly [K, V]>): GroupBy.GroupBy<
    R | R2,
    E | E2,
    K,
    V
  >
}
```
