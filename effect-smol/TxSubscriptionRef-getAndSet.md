Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.getAndSet

Gets the current value and sets a new value atomically. Publishes the new value
to all subscribers.

**Example**

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make("a")
  const old = yield* TxSubscriptionRef.getAndSet(ref, "b")
  console.log(old) // "a"
  console.log(yield* TxSubscriptionRef.get(ref)) // "b"
})
```

**Signature**

```ts
declare const getAndSet: { <A>(value: A): (self: TxSubscriptionRef<A>) => Effect.Effect<A, never, Effect.Transaction>; <A>(self: TxSubscriptionRef<A>, value: A): Effect.Effect<A, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L247)

Since v4.0.0