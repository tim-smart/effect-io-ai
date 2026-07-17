Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modifyEffect

Modifies the `SubscriptionRef` atomically with an effectful function that
computes a return value and a new value, notifying subscribers of the
change.

**Example** (Modifying with an effect)

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const result = yield* SubscriptionRef.modifyEffect(
    ref,
    (n) => Effect.succeed([`Doubled from ${n}`, n * 2] as const)
  )
  console.log(result)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const modifyEffect: { <B, A, E, R>(modify: (a: A) => Effect.Effect<readonly [B, A], E, R>): (self: SubscriptionRef<A>) => Effect.Effect<B, E, R>; <A, B, E, R>(self: SubscriptionRef<A>, modify: (a: A) => Effect.Effect<readonly [B, A], E, R>): Effect.Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L504)

Since v2.0.0