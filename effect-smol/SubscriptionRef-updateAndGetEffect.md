Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateAndGetEffect

Updates the value of the `SubscriptionRef` with the result of applying an
effectful function and returns the new value, notifying subscribers of the
change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const newValue = yield* SubscriptionRef.updateAndGetEffect(
    ref,
    (n) => Effect.succeed(n + 5)
  )
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const updateAndGetEffect: { <A, E, R>(update: (a: A) => Effect.Effect<A, E, R>): (self: SubscriptionRef<A>) => Effect.Effect<A, E, R>; <A, E, R>(self: SubscriptionRef<A>, update: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L715)

Since v2.0.0