Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.awaitShutdown

Waits until the queue is shutdown. The `Effect` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `Effect` will resume right away.

**Signature**

```ts
declare const awaitShutdown: <A>(self: PubSub<A>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L148)

Since v2.0.0