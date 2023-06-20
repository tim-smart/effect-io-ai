# fromChunkHubScoped

Creates a stream from a subscription to a `Hub` in the context of a scoped
effect. The scoped effect describes subscribing to receive messages from
the hub while the stream describes taking messages from the hub.

To import and use `fromChunkHubScoped` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromChunkHubScoped
```

**Signature**

```ts
export declare const fromChunkHubScoped: <A>(
  hub: Hub.Hub<Chunk.Chunk<A>>
) => Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
```
