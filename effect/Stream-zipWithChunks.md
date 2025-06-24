Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithChunks

Zips this stream with another point-wise and applies the function to the
paired elements.

The new stream will end when one of the sides ends.

**Signature**

```ts
declare const zipWithChunks: { <A2, E2, R2, A, A3>(that: Stream<A2, E2, R2>, f: (left: Chunk.Chunk<A>, right: Chunk.Chunk<A2>) => readonly [Chunk.Chunk<A3>, Either.Either<Chunk.Chunk<A2>, Chunk.Chunk<A>>]): <E, R>(self: Stream<A, E, R>) => Stream<A3, E2 | E, R2 | R>; <A, E, R, A2, E2, R2, A3>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, f: (left: Chunk.Chunk<A>, right: Chunk.Chunk<A2>) => readonly [Chunk.Chunk<A3>, Either.Either<Chunk.Chunk<A2>, Chunk.Chunk<A>>]): Stream<A3, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6080)

Since v2.0.0