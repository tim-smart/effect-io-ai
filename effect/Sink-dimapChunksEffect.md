# dimapChunksEffect

Effectfully transforms both input chunks and result of this sink using the
provided functions. `f` and `g` must preserve chunking-invariance.

To import and use `dimapChunksEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.dimapChunksEffect
undefined

**Signature**

```ts
export declare const dimapChunksEffect: {
  <In0, In, E2, R2, A, A2, E3, R3>(options: {
    readonly onInput: (chunk: Chunk.Chunk<In0>) => Effect.Effect<Chunk.Chunk<In>, E2, R2>
    readonly onDone: (a: A) => Effect.Effect<A2, E3, R3>
  }): <L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In0, L, E2 | E3 | E, R2 | R3 | R>
  <A, In, L, E, R, In0, E2, R2, A2, E3, R3>(
    self: Sink<A, In, L, E, R>,
    options: {
      readonly onInput: (chunk: Chunk.Chunk<In0>) => Effect.Effect<Chunk.Chunk<In>, E2, R2>
      readonly onDone: (a: A) => Effect.Effect<A2, E3, R3>
    }
  ): Sink<A2, In0, L, E | E2 | E3, R | R2 | R3>
}
```
