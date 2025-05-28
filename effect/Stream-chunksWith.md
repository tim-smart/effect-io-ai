Package: `effect`<br />
Module: `Stream`<br />

## Stream.chunksWith

Performs the specified stream transformation with the chunk structure of
the stream exposed.

**Signature**

```ts
declare const chunksWith: { <A, E, R, A2, E2, R2>(f: (stream: Stream<Chunk.Chunk<A>, E, R>) => Stream<Chunk.Chunk<A2>, E2, R2>): (self: Stream<A, E, R>) => Stream<A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (stream: Stream<Chunk.Chunk<A>, E, R>) => Stream<Chunk.Chunk<A2>, E2, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L967)

Since v2.0.0