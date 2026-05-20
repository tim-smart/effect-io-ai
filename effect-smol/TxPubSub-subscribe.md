Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.subscribe

Subscribes to the TxPubSub, returning a scoped `TxQueue` for messages published after subscription.

**Details**

The returned queue uses the hub's capacity strategy: bounded subscriptions backpressure publishers when full, dropping subscriptions may miss new messages when full, and sliding subscriptions may evict older queued messages. The subscription is automatically removed when the scope is closed.

**Example** (Subscribing multiple queues)

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<string>()

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub1 = yield* TxPubSub.subscribe(hub)
      const sub2 = yield* TxPubSub.subscribe(hub)

      yield* TxPubSub.publish(hub, "broadcast")

      const msg1 = yield* TxQueue.take(sub1)
      const msg2 = yield* TxQueue.take(sub2)
      console.log(msg1, msg2) // "broadcast" "broadcast"
    })
  )
})
```

**Signature**

```ts
declare const subscribe: <A>(self: TxPubSub<A>) => Effect.Effect<TxQueue.TxQueue<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L502)

Since v2.0.0