Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateAndGet

Updates the value of the `SubscriptionRef` with the result of applying a
function and returns the new value, notifying subscribers of the change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const newValue = yield* SubscriptionRef.updateAndGet(ref, (n) => n * 2)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const updateAndGet: { <A>(update: (a: A) => A): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, update: (a: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L674)

Since v2.0.0