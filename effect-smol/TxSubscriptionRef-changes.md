Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.changes

Subscribes to all changes of the TxSubscriptionRef. Returns a scoped TxDequeue
that first yields the current value, then every subsequent update.

**Example**

```ts
import { Effect, TxSubscriptionRef, TxQueue } from "effect"

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

**Signature**

```ts
declare const changes: <A>(self: TxSubscriptionRef<A>) => Effect.Effect<TxQueue.TxQueue<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L346)

Since v4.0.0