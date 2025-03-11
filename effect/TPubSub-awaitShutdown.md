## awaitShutdown

Waits until the `TPubSub` is shutdown. The `STM` returned by this method will
not resume until the queue has been shutdown. If the `TPubSub` is already
shutdown, the `STM` will resume right away.

**Signature**

```ts
declare const awaitShutdown: <A>(self: TPubSub<A>) => STM.STM<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L64)

Since v2.0.0