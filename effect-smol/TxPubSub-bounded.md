Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.bounded

Creates a bounded TxPubSub with the specified capacity. When a subscriber's
queue is full, the publisher will retry the transaction until space is available.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.bounded<number>(16)

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publish(hub, 42)
      const value = yield* TxQueue.take(sub)
      console.log(value) // 42
    })
  )
})
```

**Signature**

```ts
declare const bounded: <A = never>(capacity: number) => Effect.Effect<TxPubSub<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L121)

Since v4.0.0