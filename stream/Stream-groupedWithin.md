# groupedWithin

Partitions the stream with the specified `chunkSize` or until the specified
`duration` has passed, whichever is satisfied first.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const groupedWithin: {
  (chunkSize: number, duration: Duration.Duration): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, chunkSize: number, duration: Duration.Duration): Stream<R, E, Chunk.Chunk<A>>
}
```
