## mapInputChunksEffect

Effectfully transforms this sink's input chunks. `f` must preserve
chunking-invariance.

**Signature**

```ts
declare const mapInputChunksEffect: { <In0, In, E2, R2>(f: (chunk: Chunk.Chunk<In0>) => Effect.Effect<Chunk.Chunk<In>, E2, R2>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E2 | E, R2 | R>; <A, In, L, E, R, In0, E2, R2>(self: Sink<A, In, L, E, R>, f: (chunk: Chunk.Chunk<In0>) => Effect.Effect<Chunk.Chunk<In>, E2, R2>): Sink<A, In0, L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L313)

Since v2.0.0