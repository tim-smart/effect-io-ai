# evaluateBuffer

Like `evaluate`, but with a configurable `bufferSize` parameter.

Part of the `GroupBy` module, imported from `@effect/stream/GroupBy`.

**Signature**

```ts
export declare const evaluateBuffer: {
  <K, E, V, R2, E2, A>(
    f: (key: K, stream: Stream.Stream<never, E, V>) => Stream.Stream<R2, E2, A>,
    bufferSize: number
  ): <R>(self: GroupBy<R, E, K, V>) => Stream.Stream<R2 | R, E | E2, A>
  <R, K, E, V, R2, E2, A>(
    self: GroupBy<R, E, K, V>,
    f: (key: K, stream: Stream.Stream<never, E, V>) => Stream.Stream<R2, E2, A>,
    bufferSize: number
  ): Stream.Stream<R | R2, E | E2, A>
}
```
