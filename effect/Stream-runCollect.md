# runCollect

Runs the stream and collects all of its elements to a chunk.

To import and use `runCollect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runCollect
```

**Signature**

```ts
export declare const runCollect: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Chunk.Chunk<A>, E, R>
```
