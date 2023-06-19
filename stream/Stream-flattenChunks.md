# flattenChunks

Submerges the chunks carried by this stream into the stream's structure,
while still preserving them.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenChunks: <R, E, A>(self: Stream<R, E, Chunk.Chunk<A>>) => Stream<R, E, A>
```
