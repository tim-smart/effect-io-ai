# pipeThroughChannelOrFail

Pipes all values from this stream through the provided channel, passing
through any error emitted by this stream unchanged.

To import and use `pipeThroughChannelOrFail` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.pipeThroughChannelOrFail
undefined

**Signature**

```ts
export declare const pipeThroughChannelOrFail: {
  <R2, E, E2, A, A2>(
    chan: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>
  ): <R>(self: Stream<A, E, R>) => Stream<A2, E | E2, R2 | R>
  <R, R2, E, E2, A, A2>(
    self: Stream<A, E, R>,
    chan: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>
  ): Stream<A2, E | E2, R | R2>
}
```
