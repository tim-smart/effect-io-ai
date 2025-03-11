## pipeThroughChannelOrFail

Pipes all values from this stream through the provided channel, passing
through any error emitted by this stream unchanged.

**Signature**

```ts
declare const pipeThroughChannelOrFail: { <R2, E, E2, A, A2>(chan: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>): <R>(self: Stream<A, E, R>) => Stream<A2, E | E2, R2 | R>; <R, R2, E, E2, A, A2>(self: Stream<A, E, R>, chan: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3598)

Since v2.0.0