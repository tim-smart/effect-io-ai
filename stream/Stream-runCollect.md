# runCollect

Runs the stream and collects all of its elements to a chunk.

To import and use `runCollect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.runCollect
```

**Signature**

```ts
export declare const runCollect: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, Chunk.Chunk<A>>
```
