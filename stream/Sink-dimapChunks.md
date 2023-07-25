# dimapChunks

Transforms both input chunks and result of this sink using the provided
functions.

To import and use `dimapChunks` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.dimapChunks
```

**Signature**

```ts
export declare const dimapChunks: {
  <In0, In, Z, Z2>(options: {
    readonly onInput: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>
    readonly onDone: (z: Z) => Z2
  }): <R, E, L>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In0, L, Z2>
  <R, E, L, In0, In, Z, Z2>(
    self: Sink<R, E, In, L, Z>,
    options: { readonly onInput: (chunk: Chunk.Chunk<In0>) => Chunk.Chunk<In>; readonly onDone: (z: Z) => Z2 }
  ): Sink<R, E, In0, L, Z2>
}
```
