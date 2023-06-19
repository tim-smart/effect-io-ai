# fromChunkHubWithShutdown

Creates a stream from a subscription to a `Hub`.

The hub will be shut down once the stream is closed.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromChunkHubWithShutdown: <A>(hub: Hub.Hub<Chunk.Chunk<A>>) => Stream<never, never, A>
```
