Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getAndSet

Retrieves the current value and sets a new value atomically, notifying
subscribers of the change.

**Example** (Getting and setting a value)

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const oldValue = yield* SubscriptionRef.getAndSet(ref, 20)
  console.log("Old value:", oldValue)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const getAndSet: { <A>(value: A): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L238)

Since v2.0.0