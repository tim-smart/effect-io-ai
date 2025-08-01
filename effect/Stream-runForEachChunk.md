Package: `effect`<br />
Module: `Stream`<br />

## Stream.runForEachChunk

Consumes all elements of the stream, passing them to the specified
callback.

**Signature**

```ts
declare const runForEachChunk: { <A, X, E2, R2>(f: (a: Chunk.Chunk<A>) => Effect.Effect<X, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (a: Chunk.Chunk<A>) => Effect.Effect<X, E2, R2>): Effect.Effect<void, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4309)

Since v2.0.0