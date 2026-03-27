Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.sliding

Creates a sliding TxPubSub with the specified capacity. When a subscriber's
queue is full, the oldest message in that subscriber's queue is dropped.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.sliding<number>(2)

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publish(hub, 1)
      yield* TxPubSub.publish(hub, 2)
      yield* TxPubSub.publish(hub, 3) // evicts 1
      const v1 = yield* TxQueue.take(sub)
      console.log(v1) // 2
    })
  )
})
```

**Signature**

```ts
declare const sliding: <A = never>(capacity: number) => Effect.Effect<TxPubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L190)

Since v4.0.0