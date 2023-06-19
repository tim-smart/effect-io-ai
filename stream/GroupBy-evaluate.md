# evaluate

Run the function across all groups, collecting the results in an
arbitrary order.

Part of the `GroupBy` module, imported from `@effect/stream/GroupBy`.

**Signature**

```ts
export declare const evaluate: {
  <K, E, V, R2, E2, A>(f: (key: K, stream: Stream.Stream<never, E, V>) => Stream.Stream<R2, E2, A>): <R>(
    self: GroupBy<R, E, K, V>
  ) => Stream.Stream<R2 | R, E | E2, A>
  <R, K, E, V, R2, E2, A>(
    self: GroupBy<R, E, K, V>,
    f: (key: K, stream: Stream.Stream<never, E, V>) => Stream.Stream<R2, E2, A>
  ): Stream.Stream<R | R2, E | E2, A>
}
```
