Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateEffect

Updates the value of the `SubscriptionRef` with the result of applying an
effectful function, notifying subscribers of the change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  yield* SubscriptionRef.updateEffect(ref, (n) => Effect.succeed(n + 5))

  const value = yield* SubscriptionRef.get(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const updateEffect: { <A, E, R>(update: (a: A) => Effect.Effect<A, E, R>): (self: SubscriptionRef<A>) => Effect.Effect<void, E, R>; <A, E, R>(self: SubscriptionRef<A>, update: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L644)

Since v2.0.0