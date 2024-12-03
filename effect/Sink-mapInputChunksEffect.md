# mapInputChunksEffect

Effectfully transforms this sink's input chunks. `f` must preserve
chunking-invariance.

To import and use `mapInputChunksEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.mapInputChunksEffect
```

**Signature**

```ts
export declare const mapInputChunksEffect: {
  <In0, In, E2, R2>(
    f: (chunk: Chunk.Chunk<In0>) => Effect.Effect<Chunk.Chunk<In>, E2, R2>
  ): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E2 | E, R2 | R>
  <A, In, L, E, R, In0, E2, R2>(
    self: Sink<A, In, L, E, R>,
    f: (chunk: Chunk.Chunk<In0>) => Effect.Effect<Chunk.Chunk<In>, E2, R2>
  ): Sink<A, In0, L, E | E2, R | R2>
}
```
