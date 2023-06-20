# fromHubWithShutdown

Create a sink which publishes each element to the specified hub. The hub
will be shutdown once the stream is closed.

To import and use `fromHubWithShutdown` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.fromHubWithShutdown
```

**Signature**

```ts
export declare const fromHubWithShutdown: <In>(hub: Hub.Hub<In>) => Sink<never, never, In, never, void>
```
