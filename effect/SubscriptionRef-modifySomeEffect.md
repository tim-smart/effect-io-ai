Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modifySomeEffect

Computes a return value and optionally updates the reference effectfully.

**When to use**

Use to return a separate result while effectfully deciding whether to publish
a new `SubscriptionRef` value.

**Details**

If the effect succeeds with `Option.some`, the new value is set and
published. If it succeeds with `Option.none`, the reference is left unchanged
and no update is published.

**Example** (Conditionally modifying with an effect)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const result = yield* SubscriptionRef.modifySomeEffect(
    ref,
    (n) =>
      Effect.succeed(
        n > 5
          ? (["Updated", Option.some(n + 5)] as const)
          : (["Not updated", Option.none()] as const)
      )
  )
  console.log(result)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const modifySomeEffect: { <A, B, R, E>(modify: (a: A) => Effect.Effect<readonly [B, Option.Option<A>], E, R>): (self: SubscriptionRef<A>) => Effect.Effect<B, E, R>; <A, B, R, E>(self: SubscriptionRef<A>, modify: (a: A) => Effect.Effect<readonly [B, Option.Option<A>], E, R>): Effect.Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L620)

Since v2.0.0