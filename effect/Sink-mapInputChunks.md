# mapInputChunks

Transforms this sink's input chunks. `f` must preserve chunking-invariance.

To import and use `mapInputChunks` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.mapInputChunks
```

**Signature**

```ts
export declare const mapInputChunks: {
  <In0, In>(
    f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>
  ): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In0, L, E, R>
  <A, In, L, E, R, In0>(
    self: Sink<A, In, L, E, R>,
    f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>
  ): Sink<A, In0, L, E, R>
}
```
