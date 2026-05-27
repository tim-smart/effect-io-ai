Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getAndUpdateSomeEffect

Atomically retrieves the current value and applies an effectful update
function. If it succeeds with `Option.some`, sets and publishes that value;
if it succeeds with `Option.none`, leaves the reference unchanged and does
not publish.

**Example** (Getting and conditionally updating with an effect)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const oldValue = yield* SubscriptionRef.getAndUpdateSomeEffect(
    ref,
    (n) => Effect.succeed(n > 5 ? Option.some(n + 3) : Option.none())
  )
  console.log("Old value:", oldValue)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const getAndUpdateSomeEffect: { <A, R, E>(update: (a: A) => Effect.Effect<Option.Option<A>, E, R>): (self: SubscriptionRef<A>) => Effect.Effect<A, E, R>; <A, R, E>(self: SubscriptionRef<A>, update: (a: A) => Effect.Effect<Option.Option<A>, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L442)

Since v2.0.0