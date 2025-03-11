## branchAfter

Returns a `Stream` that first collects `n` elements from the input `Stream`,
and then creates a new `Stream` using the specified function, and sends all
the following elements through that.

**Signature**

```ts
declare const branchAfter: { <A, A2, E2, R2>(n: number, f: (input: Chunk.Chunk<A>) => Stream<A2, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, n: number, f: (input: Chunk.Chunk<A>) => Stream<A2, E2, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L447)

Since v2.0.0