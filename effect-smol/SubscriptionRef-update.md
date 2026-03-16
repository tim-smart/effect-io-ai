Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.update

Updates the value of the `SubscriptionRef` with the result of applying a
function, notifying subscribers of the change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  yield* SubscriptionRef.update(ref, (n) => n * 2)

  const value = yield* SubscriptionRef.get(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const update: { <A>(update: (a: A) => A): (self: SubscriptionRef<A>) => Effect.Effect<void>; <A>(self: SubscriptionRef<A>, update: (a: A) => A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L613)

Since v2.0.0