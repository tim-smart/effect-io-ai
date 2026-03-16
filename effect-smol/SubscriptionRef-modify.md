Package: `effect`<br />
Module: `SubscriptionRef`<br />

## SubscriptionRef.modify

Atomically modifies the `SubscriptionRef` with a function that computes a
return value and a new value, notifying subscribers of the change.

**Example**

```ts
import { Effect, SubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* SubscriptionRef.make(10)

  const result = yield* SubscriptionRef.modify(ref, (n) => [
    `Old value was ${n}`,
    n * 2
  ])
  console.log(result)

  const newValue = yield* SubscriptionRef.get(ref)
  console.log("New value:", newValue)
})
```

**Signature**

```ts
declare const modify: { <A, B>(modify: (a: A) => readonly [B, A]): (self: SubscriptionRef<A>) => Effect.Effect<B>; <A, B>(self: SubscriptionRef<A>, f: (a: A) => readonly [B, A]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SubscriptionRef.ts#L380)

Since v2.0.0