# pipeThroughChannel

Pipes all the values from this stream through the provided channel.

To import and use `pipeThroughChannel` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.pipeThroughChannel
undefined

**Signature**

```ts
export declare const pipeThroughChannel: {
  <R2, E, E2, A, A2>(
    channel: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>
  ): <R>(self: Stream<A, E, R>) => Stream<A2, E2, R2 | R>
  <R, R2, E, E2, A, A2>(
    self: Stream<A, E, R>,
    channel: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>
  ): Stream<A2, E2, R | R2>
}
```
