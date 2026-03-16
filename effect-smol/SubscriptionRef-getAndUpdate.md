Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getAndUpdate

Atomically retrieves the current value and updates it with the result of
applying a function, notifying subscribers of the change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const oldValue = yield* SubscriptionRef.getAndUpdate(ref, (n) => n * 2)
  console.log("Old value:", oldValue)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const getAndUpdate: { <A>(update: (a: A) => A): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, update: (a: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L214)

Since v2.0.0