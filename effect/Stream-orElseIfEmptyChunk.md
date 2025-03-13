Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseIfEmptyChunk

Produces the specified chunk if this stream is empty.

**Signature**

```ts
declare const orElseIfEmptyChunk: { <A2>(chunk: LazyArg<Chunk.Chunk<A2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>; <A, E, R, A2>(self: Stream<A, E, R>, chunk: LazyArg<Chunk.Chunk<A2>>): Stream<A | A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3331)

Since v2.0.0