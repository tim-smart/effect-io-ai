# pipeThroughChannelOrFail

Pipes all values from this stream through the provided channel, passing
through any error emitted by this stream unchanged.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const pipeThroughChannelOrFail: {
  <R2, E, E2, A, A2>(chan: Channel.Channel<R2, E, Chunk.Chunk<A>, unknown, E2, Chunk.Chunk<A2>, unknown>): <R>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E | E2, A2>
  <R, R2, E, E2, A, A2>(
    self: Stream<R, E, A>,
    chan: Channel.Channel<R2, E, Chunk.Chunk<A>, unknown, E2, Chunk.Chunk<A2>, unknown>
  ): Stream<R | R2, E | E2, A2>
}
```
