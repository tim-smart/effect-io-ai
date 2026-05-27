Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.changes

Subscribes to all changes of the TxSubscriptionRef. Returns a scoped TxDequeue
that first yields the current value, then every subsequent update.

**When to use**

Use to subscribe to committed changes through a scoped transactional queue.

**Example** (Subscribing to changes)

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

- `changesStream` for subscribing through a `Stream`

**Signature**

```ts
declare const changes: <A>(self: TxSubscriptionRef<A>) => Effect.Effect<TxQueue.TxQueue<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L459)

Since v3.10.0