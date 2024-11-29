# forEachChunkWhile

A sink that executes the provided effectful function for every chunk fed to
it until `f` evaluates to `false`.

To import and use `forEachChunkWhile` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEachChunkWhile
undefined

**Signature**

```ts
export declare const forEachChunkWhile: <In, E, R>(
  f: (input: Chunk.Chunk<In>) => Effect.Effect<boolean, E, R>
) => Sink<void, In, In, E, R>
```
