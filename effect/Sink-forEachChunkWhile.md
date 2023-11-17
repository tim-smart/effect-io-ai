# forEachChunkWhile

A sink that executes the provided effectful function for every chunk fed to
it until `f` evaluates to `false`.

To import and use `forEachChunkWhile` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEachChunkWhile
```

**Signature**

```ts
export declare const forEachChunkWhile: <In, R, E>(
  f: (input: Chunk.Chunk<In>) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, void>
```
