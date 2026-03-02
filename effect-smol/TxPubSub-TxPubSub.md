Package: `effect`<br />
Module: `TxPubSub`<br />

## TxPubSub.TxPubSub

A TxPubSub represents a transactional publish/subscribe hub that broadcasts messages
to all current subscribers using Software Transactional Memory (STM) semantics.

**Example**

```ts
import { Effect, TxPubSub, TxQueue } from "effect"

const program = Effect.gen(function*() {
  const hub = yield* TxPubSub.unbounded<string>()

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
export interface TxPubSub<in out A> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  /** @internal */
  readonly subscribersRef: TxRef.TxRef<Array<TxQueue.TxQueue<A>>>
  /** @internal */
  readonly shutdownRef: TxRef.TxRef<boolean>
  readonly strategy: "bounded" | "unbounded" | "dropping" | "sliding"
  readonly capacity: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxPubSub.ts#L48)

Since v4.0.0