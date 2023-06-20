# fromChunkHubScopedWithShutdown

Creates a stream from a subscription to a `Hub` in the context of a scoped
effect. The scoped effect describes subscribing to receive messages from
the hub while the stream describes taking messages from the hub.

The hub will be shut down once the stream is closed.

To import and use `fromChunkHubScopedWithShutdown` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromChunkHubScopedWithShutdown
```

**Signature**

```ts
export declare const fromChunkHubScopedWithShutdown: <A>(
  hub: Hub.Hub<Chunk.Chunk<A>>
) => Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
```
