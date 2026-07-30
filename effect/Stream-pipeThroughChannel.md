Package: `effect`<br />
Module: `Stream`<br />

## Stream.pipeThroughChannel

Pipes all the values from this stream through the provided channel.

**Signature**

```ts
declare const pipeThroughChannel: { <R2, E, E2, A, A2>(channel: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>): <R>(self: Stream<A, E, R>) => Stream<A2, E2, R2 | R>; <R, R2, E, E2, A, A2>(self: Stream<A, E, R>, channel: Channel.Channel<Chunk.Chunk<A2>, Chunk.Chunk<A>, E2, E, unknown, unknown, R2>): Stream<A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3582)

Since v2.0.0