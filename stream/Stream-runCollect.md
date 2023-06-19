# runCollect

Runs the stream and collects all of its elements to a chunk.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runCollect: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, Chunk.Chunk<A>>
```
