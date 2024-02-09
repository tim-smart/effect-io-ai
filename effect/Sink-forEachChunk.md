# forEachChunk

A sink that executes the provided effectful function for every chunk fed to
it.

To import and use `forEachChunk` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.forEachChunk
```

**Signature**

```ts
export declare const forEachChunk: <In, _, E, R>(
  f: (input: Chunk.Chunk<In>) => Effect.Effect<_, E, R>
) => Sink<void, In, never, E, R>
```
