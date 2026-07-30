Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.awaitShutdown

Waits until the queue is shutdown. The `STM` returned by this method will
not resume until the queue has been shutdown. If the queue is already
shutdown, the `STM` will resume right away.

**Signature**

```ts
declare const awaitShutdown: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L209)

Since v2.0.0