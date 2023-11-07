# pipeThroughChannel

Pipes all the values from this stream through the provided channel.

To import and use `pipeThroughChannel` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.pipeThroughChannel
```

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
