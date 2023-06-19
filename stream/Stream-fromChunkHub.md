# fromChunkHub

Creates a stream from a subscription to a `Hub`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromChunkHub: <A>(hub: Hub.Hub<Chunk.Chunk<A>>) => Stream<never, never, A>
```
