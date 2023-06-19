# awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const awaitShutdown: <A>(self: Hub<A>) => Effect.Effect<never, never, void>
```
