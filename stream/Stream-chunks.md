# chunks

Exposes the underlying chunks of the stream as a stream of chunks of
elements.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const chunks: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
```
