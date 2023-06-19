# fromHub

Create a sink which publishes each element to the specified hub.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fromHub: <In>(hub: Hub.Hub<In>) => Sink<never, never, In, never, void>
```
