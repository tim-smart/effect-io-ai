Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modifySome

Atomically modifies the `SubscriptionRef` with a function that computes a
return value and optionally a new value, notifying subscribers only if the
value changes.

**Example**

```ts
import { Effect, Option, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const result = yield* SubscriptionRef.modifySome(
    ref,
    (n) =>
      n > 5 ? ["Updated", Option.some(n * 2)] : ["Not updated", Option.none()]
  )
  console.log(result)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const modifySome: { <B, A>(modify: (a: A) => readonly [B, Option.Option<A>]): (self: SubscriptionRef<A>) => Effect.Effect<B>; <A, B>(self: SubscriptionRef<A>, modify: (a: A) => readonly [B, Option.Option<A>]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L463)

Since v2.0.0