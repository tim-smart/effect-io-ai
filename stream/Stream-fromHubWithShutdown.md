# fromHubWithShutdown

Creates a stream from a subscription to a `Hub`.

The hub will be shut down once the stream is closed.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromHubWithShutdown: <A>(hub: Hub.Hub<A>, maxChunkSize?: number) => Stream<never, never, A>
```
