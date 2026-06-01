Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSomeEffect

Applies an effectful update only when it produces a new value.

**When to use**

Use to conditionally update a `SubscriptionRef` with an effectful function
while discarding the resulting value.

**Details**

If the effect succeeds with `Option.some`, the new value is set and
published. If it succeeds with `Option.none`, the reference is left unchanged
and no update is published.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L952)

Since v2.0.0