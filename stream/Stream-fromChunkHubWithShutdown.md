# fromChunkHubWithShutdown

Creates a stream from a subscription to a `Hub`.

The hub will be shut down once the stream is closed.

To import and use `fromChunkHubWithShutdown` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromChunkHubWithShutdown
```

**Signature**

```ts
export declare const fromChunkHubWithShutdown: <A>(hub: Hub.Hub<Chunk.Chunk<A>>) => Stream<never, never, A>
```
