Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.publishAll

Publishes all messages from an iterable to all current subscribers.

Returns `true` if all messages were delivered to all subscribers.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<number>()

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publishAll(hub, [1, 2, 3])
      const v1 = yield* TxQueue.take(sub)
      const v2 = yield* TxQueue.take(sub)
      const v3 = yield* TxQueue.take(sub)
      console.log(v1, v2, v3) // 1 2 3
    })
  )
})
```

**Signature**

```ts
declare const publishAll: { <A>(values: Iterable<A>): (self: TxPubSub<A>) => Effect.Effect<boolean, never, Effect.Transaction>; <A>(self: TxPubSub<A>, values: Iterable<A>): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L442)

Since v4.0.0