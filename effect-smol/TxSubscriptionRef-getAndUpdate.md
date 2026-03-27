Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.getAndUpdate

Gets the current value and updates it using a function atomically. Publishes
the new value to all subscribers.

**Example**

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(1)
  const old = yield* TxSubscriptionRef.getAndUpdate(ref, (n) => n + 10)
  console.log(old) // 1
  console.log(yield* TxSubscriptionRef.get(ref)) // 11
})
```

**Signature**

```ts
declare const getAndUpdate: { <A>(f: (current: A) => A): (self: TxSubscriptionRef<A>) => Effect.Effect<A>; <A>(self: TxSubscriptionRef<A>, f: (current: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L273)

Since v4.0.0