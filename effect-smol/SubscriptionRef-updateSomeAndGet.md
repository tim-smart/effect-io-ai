Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.updateSomeAndGet

Applies an update function and returns the resulting current value. If the
function returns `Option.some`, sets, publishes, and returns that value; if
it returns `Option.none`, returns the unchanged current value without
publishing.

**Example** (Conditionally updating and reading the new value)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const newValue = yield* SubscriptionRef.updateSomeAndGet(
    ref,
    (n) => n > 5 ? Option.some(n * 2) : Option.none()
  )
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const updateSomeAndGet: { <A>(update: (a: A) => Option.Option<A>): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, update: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L889)

Since v2.0.0