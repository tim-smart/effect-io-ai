Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSomeAndGetEffect

Applies an effectful optional update and returns the current value afterward.

**When to use**

Use to conditionally update a `SubscriptionRef` effectfully and read the
value that is current after the update decision.

**Details**

If the effect succeeds with `Option.some`, the new value is set, published,
and returned. If it succeeds with `Option.none`, the unchanged current value
is returned without publishing.

**Example** (Conditionally updating with an effect and reading the new value)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L1005)

Since v2.0.0