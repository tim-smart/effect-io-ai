Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSome

Optionally updates the value of the `SubscriptionRef` with the result of
applying a function that returns an `Option`, notifying subscribers only if
the value changes.

**Example**

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  yield* SubscriptionRef.updateSome(
    ref,
    (n) => n > 5 ? Option.some(n * 2) : Option.none()
  )

  const value = yield* SubscriptionRef.get(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const updateSome: { <A>(update: (a: A) => Option.Option<A>): (self: SubscriptionRef<A>) => Effect.Effect<void>; <A>(self: SubscriptionRef<A>, update: (a: A) => Option.Option<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L746)

Since v2.0.0