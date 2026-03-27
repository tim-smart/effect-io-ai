Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.updateAndGet

Updates the value using a function and returns the new value. Publishes the
new value to all subscribers.

**Example**

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(3)
  const result = yield* TxSubscriptionRef.updateAndGet(ref, (n) => n * 3)
  console.log(result) // 9
})
```

**Signature**

```ts
declare const updateAndGet: { <A>(f: (current: A) => A): (self: TxSubscriptionRef<A>) => Effect.Effect<A>; <A>(self: TxSubscriptionRef<A>, f: (current: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L300)

Since v4.0.0