Package: `effect`<br />
Module: `Stream`<br />

## Stream.splitOnChunk

Splits elements on a delimiter and transforms the splits into desired output.

**Signature**

```ts
declare const splitOnChunk: { <A>(delimiter: Chunk.Chunk<A>): <E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, delimiter: Chunk.Chunk<A>): Stream<Chunk.Chunk<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4704)

Since v2.0.0