Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.TxSubscriptionRef

A TxSubscriptionRef is a transactional reference that allows subscribing to all
committed changes. Subscribers receive the current value followed by every subsequent
update via a transactional dequeue.

**When to use**

Use to store transactional state whose committed changes must be observable by
subscribers.

**Example** (Subscribing to transactional changes)

```ts
import { Effect, TxQueue, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(0)

  yield* Effect.scoped(
    Effect.gen(function*() {
      const sub = yield* TxSubscriptionRef.changes(ref)
      const initial = yield* TxQueue.take(sub)
      console.log(initial) // 0

      yield* TxSubscriptionRef.set(ref, 1)
      const next = yield* TxQueue.take(sub)
      console.log(next) // 1
    })
  )
})
```

**See**

- `make` for creating a transactional subscription reference
- `changes` for subscribing through a transactional queue
- `changesStream` for subscribing through a `Stream`

**Signature**

```ts
export interface TxSubscriptionRef<in out A> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  /** @internal */
  readonly ref: TxRef.TxRef<A>
  /** @internal */
  readonly pubsub: TxPubSub.TxPubSub<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L66)

Since v4.0.0