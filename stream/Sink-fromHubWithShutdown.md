# fromHubWithShutdown

Create a sink which publishes each element to the specified hub. The hub
will be shutdown once the stream is closed.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fromHubWithShutdown: <In>(hub: Hub.Hub<In>) => Sink<never, never, In, never, void>
```
