## mapChunksEffect

Effectfully transforms the chunks emitted by this stream.

**Signature**

```ts
declare const mapChunksEffect: { <A, B, E2, R2>(f: (chunk: Chunk.Chunk<A>) => Effect.Effect<Chunk.Chunk<B>, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<B, E2 | E, R2 | R>; <A, E, R, B, E2, R2>(self: Stream<A, E, R>, f: (chunk: Chunk.Chunk<A>) => Effect.Effect<Chunk.Chunk<B>, E2, R2>): Stream<B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2800)

Since v2.0.0