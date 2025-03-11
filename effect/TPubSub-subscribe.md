## subscribe

Subscribes to receive messages from the `TPubSub`. The resulting subscription can
be evaluated multiple times to take a message from the `TPubSub` each time. The
caller is responsible for unsubscribing from the `TPubSub` by shutting down the
queue.

**Signature**

```ts
declare const subscribe: <A>(self: TPubSub<A>) => STM.STM<TQueue.TDequeue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L181)

Since v2.0.0