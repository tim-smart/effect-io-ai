Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.size

Returns the current number of messages across all subscriber queues (the max).

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<number>()

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publish(hub, 1)
      yield* TxPubSub.publish(hub, 2)
      const s = yield* TxPubSub.size(hub)
      console.log(s) // 2
    })
  )
})
```

**Signature**

```ts
declare const size: <A>(self: TxPubSub<A>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L275)

Since v4.0.0