# runForEachChunk

Consumes all elements of the stream, passing them to the specified
callback.

To import and use `runForEachChunk` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runForEachChunk
```

**Signature**

```ts
export declare const runForEachChunk: {
  <A, R2, E2, _>(
    f: (a: Chunk.Chunk<A>) => Effect.Effect<_, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>
  <R, E, A, R2, E2, _>(
    self: Stream<A, E, R>,
    f: (a: Chunk.Chunk<A>) => Effect.Effect<_, E2, R2>
  ): Effect.Effect<void, E | E2, R | R2>
}
```
