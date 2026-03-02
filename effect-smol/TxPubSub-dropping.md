Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.dropping

Creates a dropping TxPubSub with the specified capacity. When a subscriber's
queue is full, the message is dropped for that subscriber.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.dropping<number>(2)

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publish(hub, 1)
      yield* TxPubSub.publish(hub, 2)
      yield* TxPubSub.publish(hub, 3) // dropped
      const v1 = yield* TxQueue.take(sub)
      const v2 = yield* TxQueue.take(sub)
      console.log(v1, v2) // 1 2
    })
  )
})
```

**Signature**

```ts
declare const dropping: <A = never>(capacity: number) => Effect.Effect<TxPubSub<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L156)

Since v4.0.0