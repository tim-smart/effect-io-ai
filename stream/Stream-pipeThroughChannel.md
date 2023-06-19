# pipeThroughChannel

Pipes all the values from this stream through the provided channel.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const pipeThroughChannel: {
  <R2, E, E2, A, A2>(channel: Channel.Channel<R2, E, Chunk.Chunk<A>, unknown, E2, Chunk.Chunk<A2>, unknown>): <R>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2, A2>
  <R, R2, E, E2, A, A2>(
    self: Stream<R, E, A>,
    channel: Channel.Channel<R2, E, Chunk.Chunk<A>, unknown, E2, Chunk.Chunk<A2>, unknown>
  ): Stream<R | R2, E2, A2>
}
```
