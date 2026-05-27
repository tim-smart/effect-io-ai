Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.make

Creates a new TxSubscriptionRef with the specified initial value.

**When to use**

Use to create transactional state that also publishes every committed update
to subscribers.

**Example** (Creating a transactional subscription reference)

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(42)
  const value = yield* TxSubscriptionRef.get(ref)
  console.log(value) // 42
})
```

**See**

- `changes` for subscribing to the created reference

**Signature**

```ts
declare const make: <A>(value: A) => Effect.Effect<TxSubscriptionRef<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L146)

Since v3.10.0