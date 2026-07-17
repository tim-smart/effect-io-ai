Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.set

Sets the value of the TxSubscriptionRef and publishes the new value to all subscribers.

**When to use**

Use to replace the current `TxSubscriptionRef` value with a known value and
publish it.

**Example** (Setting a new value)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(0)
  yield* TxSubscriptionRef.set(ref, 42)
  console.log(yield* TxSubscriptionRef.get(ref)) // 42
})
```

**See**

- `update` for deriving the new value from the current value
- `getAndSet` for setting while returning the previous value

**Signature**

```ts
declare const set: { <A>(value: A): (self: TxSubscriptionRef<A>) => Effect.Effect<void>; <A>(self: TxSubscriptionRef<A>, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxSubscriptionRef.ts#L241)

Since v3.10.0