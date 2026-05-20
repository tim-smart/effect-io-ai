Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modifySomeEffect

Atomically computes a return value and an optional new value with an
effectful function. If the effect succeeds with `Option.some`, sets and
publishes the new value; if it succeeds with `Option.none`, leaves the
reference unchanged and does not publish.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L569)

Since v2.0.0