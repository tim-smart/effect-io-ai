Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.update

Updates the value of the TxSubscriptionRef using a function and publishes the new
value to all subscribers.

**When to use**

Use to derive the next `TxSubscriptionRef` value from the current value and
publish it.

**Example** (Updating a value)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(5)
  yield* TxSubscriptionRef.update(ref, (n) => n * 2)
  console.log(yield* TxSubscriptionRef.get(ref)) // 10
})
```

**See**

- `set` for replacing the value directly
- `updateAndGet` for returning the new value after the update

**Signature**

```ts
declare const update: { <A>(f: (current: A) => A): (self: TxSubscriptionRef<A>) => Effect.Effect<void>; <A>(self: TxSubscriptionRef<A>, f: (current: A) => A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L304)

Since v3.10.0