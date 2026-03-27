Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.publish

Publishes a message to all current subscribers.

Returns `true` if the message was delivered to all subscribers, or `false` if
the hub is shut down or the message was dropped for any subscriber (dropping strategy).

For bounded strategy, retries the transaction if any subscriber queue is full.
For sliding strategy, drops oldest messages in full subscriber queues.
For dropping strategy, drops the message for full subscriber queues and returns `false`.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<string>()

  // No subscribers - publish is a no-op
  const r1 = yield* TxPubSub.publish(hub, "no one listening")
  console.log(r1) // true

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxPubSub.subscribe(hub)
      yield* TxPubSub.publish(hub, "hello")
      const msg = yield* TxQueue.take(sub)
      console.log(msg) // "hello"
    })
  )
})
```

**Signature**

```ts
declare const publish: { <A>(value: A): (self: TxPubSub<A>) => Effect.Effect<boolean>; <A>(self: TxPubSub<A>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L391)

Since v4.0.0