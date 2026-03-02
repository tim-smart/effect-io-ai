Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSomeAndGet

Optionally updates the value of the `SubscriptionRef` with the result of
applying a function that returns an `Option` and returns the new value,
notifying subscribers only if the value changes.

**Example**

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const newValue = yield* SubscriptionRef.updateSomeAndGet(
    ref,
    (n) => n > 5 ? Option.some(n * 2) : Option.none()
  )
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const updateSomeAndGet: { <A>(update: (a: A) => Option.Option<A>): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, update: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L842)

Since v2.0.0