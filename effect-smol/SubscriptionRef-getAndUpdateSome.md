Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getAndUpdateSome

Atomically retrieves the current value and applies an update function. If
the function returns `Option.some`, sets and publishes that value; if it
returns `Option.none`, leaves the reference unchanged and does not publish.

**Example** (Getting and conditionally updating a value)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const oldValue = yield* SubscriptionRef.getAndUpdateSome(
    ref,
    (n) => n > 5 ? Option.some(n * 2) : Option.none()
  )
  console.log("Old value:", oldValue)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const getAndUpdateSome: { <A>(update: (a: A) => Option.Option<A>): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, update: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L397)

Since v2.0.0