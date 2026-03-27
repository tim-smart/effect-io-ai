Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.make

Creates a new TxSubscriptionRef with the specified initial value.

**Example**

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make(42)
  const value = yield* TxSubscriptionRef.get(ref)
  console.log(value) // 42
})
```

**Signature**

```ts
declare const make: <A>(value: A) => Effect.Effect<TxSubscriptionRef<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L95)

Since v4.0.0