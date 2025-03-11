## groupAdjacentBy

Creates a pipeline that groups on adjacent keys, calculated by the
specified function.

**Signature**

```ts
declare const groupAdjacentBy: { <A, K>(f: (a: A) => K): <E, R>(self: Stream<A, E, R>) => Stream<[K, Chunk.NonEmptyChunk<A>], E, R>; <A, E, R, K>(self: Stream<A, E, R>, f: (a: A) => K): Stream<[K, Chunk.NonEmptyChunk<A>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2240)

Since v2.0.0