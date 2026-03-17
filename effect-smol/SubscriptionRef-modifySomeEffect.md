Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modifySomeEffect

Atomically modifies the `SubscriptionRef` with an effectful function that
computes a return value and optionally a new value, notifying subscribers
only if the value changes.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L516)

Since v2.0.0