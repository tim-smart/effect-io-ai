Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapChunks

Transforms the chunks emitted by this stream.

**Signature**

```ts
declare const mapChunks: { <A, B>(f: (chunk: Chunk.Chunk<A>) => Chunk.Chunk<B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B>(self: Stream<A, E, R>, f: (chunk: Chunk.Chunk<A>) => Chunk.Chunk<B>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2790)

Since v2.0.0