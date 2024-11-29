# forEachChunk

A sink that executes the provided effectful function for every chunk fed to
it.

To import and use `forEachChunk` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEachChunk
undefined

**Signature**

```ts
export declare const forEachChunk: <In, X, E, R>(
  f: (input: Chunk.Chunk<In>) => Effect.Effect<X, E, R>
) => Sink<void, In, never, E, R>
```
