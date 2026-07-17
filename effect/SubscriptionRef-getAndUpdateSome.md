Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.getAndUpdateSome

Retrieves the current value and optionally updates the reference.

**When to use**

Use to read the old `SubscriptionRef` value while applying a synchronous
update only when a new value is available.

**Details**

If the function returns `Option.some`, the new value is set and published. If
it returns `Option.none`, the reference is left unchanged and no update is
published.

**Example** (Getting and conditionally updating a value)

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const oldValue = yield* SubscriptionRef.getAndUpdateSome(
    ref,
    (n) => n > 5 ? Option.some(n * 2) : Option.none()
  )
  console.log("Old value:", oldValue)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const getAndUpdateSome: { <A>(update: (a: A) => Option.Option<A>): (self: SubscriptionRef<A>) => Effect.Effect<A>; <A>(self: SubscriptionRef<A>, update: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SubscriptionRef.ts#L364)

Since v2.0.0