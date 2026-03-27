Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.unbounded

Creates an unbounded TxPubSub with unlimited capacity. Messages are always accepted.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<string>()

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publish(hub, "msg")
      const msg = yield* TxQueue.take(sub)
      console.log(msg) // "msg"
    })
  )
})
```

**Signature**

```ts
declare const unbounded: <A = never>() => Effect.Effect<TxPubSub<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L221)

Since v4.0.0