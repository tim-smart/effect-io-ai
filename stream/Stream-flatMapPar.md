# flatMapPar

Maps each element of this stream to another stream and returns the
non-deterministic merge of those streams, executing up to `n` inner streams
concurrently. Up to `bufferSize` elements of the produced streams may be
buffered in memory by this operator.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flatMapPar: {
  <A, R2, E2, A2>(n: number, f: (a: A) => Stream<R2, E2, A2>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, n: number, f: (a: A) => Stream<R2, E2, A2>): Stream<R | R2, E | E2, A2>
}
```
