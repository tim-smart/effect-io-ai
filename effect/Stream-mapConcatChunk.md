## mapConcatChunk

Maps each element to a chunk, and flattens the chunks into the output of
this stream.

**Signature**

```ts
declare const mapConcatChunk: { <A, A2>(f: (a: A) => Chunk.Chunk<A2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>; <A, E, R, A2>(self: Stream<A, E, R>, f: (a: A) => Chunk.Chunk<A2>): Stream<A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2842)

Since v2.0.0