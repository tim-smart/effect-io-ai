Package: `effect`<br />
Module: `TxSubscriptionRef`<br />

## TxSubscriptionRef.get

Reads the current value of the TxSubscriptionRef.

**Example**

```ts
import { Effect, TxSubscriptionRef } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* TxSubscriptionRef.make("hello")
  const value = yield* TxSubscriptionRef.get(ref)
  console.log(value) // "hello"
})
```

**Signature**

```ts
declare const get: <A>(self: TxSubscriptionRef<A>) => Effect.Effect<A, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxSubscriptionRef.ts#L127)

Since v4.0.0