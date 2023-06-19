# fromChunkQueue

Creates a stream from a `Queue` of values.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromChunkQueue: <A>(queue: Queue.Dequeue<Chunk.Chunk<A>>) => Stream<never, never, A>
```
