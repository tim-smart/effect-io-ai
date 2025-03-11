## mapInputChunks

Transforms this sink's input chunks. `f` must preserve chunking-invariance.

**Signature**

```ts
declare const mapInputChunks: { <In0, In>(f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E, R>; <A, In, L, E, R, In0>(self: Sink<A, In, L, E, R>, f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>): Sink<A, In0, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L296)

Since v2.0.0