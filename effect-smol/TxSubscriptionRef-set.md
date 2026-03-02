Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.set

Sets the value of the TxSubscriptionRef and publishes the new value to all subscribers.

**Example**

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(0)
  yield* TxSubscriptionRef.set(ref, 42)
  console.log(yield* TxSubscriptionRef.get(ref)) // 42
})
```

**Signature**

```ts
declare const set: { <A>(value: A): (self: TxSubscriptionRef<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxSubscriptionRef<A>, value: A): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L192)

Since v4.0.0