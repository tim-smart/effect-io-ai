# fromHubWithShutdown

Creates a stream from a subscription to a `Hub`.

The hub will be shut down once the stream is closed.

To import and use `fromHubWithShutdown` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.fromHubWithShutdown
```

**Signature**

```ts
export declare const fromHubWithShutdown: <A>(hub: Hub.Hub<A>, maxChunkSize?: number) => Stream<never, never, A>
```
