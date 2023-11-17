# dimapChunksEffect

Effectfully transforms both input chunks and result of this sink using the
provided functions. `f` and `g` must preserve chunking-invariance.

To import and use `dimapChunksEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.dimapChunksEffect
```

**Signature**

```ts
export declare const dimapChunksEffect: {
  <In0, R2, E2, In, Z, R3, E3, Z2>(options: {
    readonly onInput: (chunk: Chunk.Chunk<In0>) => Effect.Effect<R2, E2, Chunk.Chunk<In>>
    readonly onDone: (z: Z) => Effect.Effect<R3, E3, Z2>
  }): <R, E, L>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R3 | R, E2 | E3 | E, In0, L, Z2>
  <R, E, L, In0, R2, E2, In, Z, R3, E3, Z2>(
    self: Sink<R, E, In, L, Z>,
    options: {
      readonly onInput: (chunk: Chunk.Chunk<In0>) => Effect.Effect<R2, E2, Chunk.Chunk<In>>
      readonly onDone: (z: Z) => Effect.Effect<R3, E3, Z2>
    }
  ): Sink<R | R2 | R3, E | E2 | E3, In0, L, Z2>
}
```
