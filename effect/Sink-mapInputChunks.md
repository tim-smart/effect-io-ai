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
  ): <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In0, L, Z>
  <R, E, L, Z, In0, In>(
    self: Sink<R, E, In, L, Z>,
    f: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>
  ): Sink<R, E, In0, L, Z>
}
```
