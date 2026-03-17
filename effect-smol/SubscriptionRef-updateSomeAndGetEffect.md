Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSomeAndGetEffect

Optionally updates the value of the `SubscriptionRef` with the result of
applying an effectful function that returns an `Option` and returns the new
value, notifying subscribers only if the value changes.

**Example**

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const newValue = yield* SubscriptionRef.updateSomeAndGetEffect(
    ref,
    (n) => Effect.succeed(n > 5 ? Option.some(n + 3) : Option.none())
  )
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const updateSomeAndGetEffect: { <A, E, R>(update: (a: A) => Effect.Effect<Option.Option<A>, E, R>): (self: SubscriptionRef<A>) => Effect.Effect<A, E, R>; <A, E, R>(self: SubscriptionRef<A>, update: (a: A) => Effect.Effect<Option.Option<A>, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L864)

Since v2.0.0