Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSomeEffect

Applies an effectful update function to the current value. If it succeeds
with `Option.some`, sets and publishes that value; if it succeeds with
`Option.none`, leaves the reference unchanged and does not publish.

**Example** (Conditionally updating with an effect)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  yield* SubscriptionRef.updateSomeEffect(
    ref,
    (n) => Effect.succeed(n > 5 ? Option.some(n + 3) : Option.none())
  )

  const value = yield* SubscriptionRef.get(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const updateSomeEffect: { <A, E, R>(update: (a: A) => Effect.Effect<Option.Option<A>, E, R>): (self: SubscriptionRef<A>) => Effect.Effect<void, E, R>; <A, E, R>(self: SubscriptionRef<A>, update: (a: A) => Effect.Effect<Option.Option<A>, E, R>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L839)

Since v2.0.0