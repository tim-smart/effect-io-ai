Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.set

Sets the value of the `SubscriptionRef`, notifying all subscribers of the
change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(0)

  yield* SubscriptionRef.set(ref, 42)

  const value = yield* SubscriptionRef.get(ref)
  console.log(value)
})
```

**Signature**

```ts
declare const set: { <A>(value: A): (self: SubscriptionRef<A>) => Effect.Effect<void>; <A>(self: SubscriptionRef<A>, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L556)

Since v2.0.0