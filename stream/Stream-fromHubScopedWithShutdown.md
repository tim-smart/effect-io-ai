# fromHubScopedWithShutdown

Creates a stream from a subscription to a `Hub` in the context of a scoped
effect. The scoped effect describes subscribing to receive messages from
the hub while the stream describes taking messages from the hub.

The hub will be shut down once the stream is closed.

To import and use `fromHubScopedWithShutdown` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromHubScopedWithShutdown
```

**Signature**

```ts
export declare const fromHubScopedWithShutdown: <A>(
  hub: Hub.Hub<A>,
  maxChunkSize?: number
) => Effect.Effect<Scope.Scope, never, Stream<never, never, A>>
```
