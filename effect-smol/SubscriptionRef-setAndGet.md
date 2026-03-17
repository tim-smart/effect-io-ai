Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.setAndGet

Sets the value of the `SubscriptionRef` and returns the new value,
notifying all subscribers of the change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(0)

  const newValue = yield* SubscriptionRef.setAndGet(ref, 42)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const setAndGet: { <A>(value: A): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L584)

Since v2.0.0