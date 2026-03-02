Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.set

Sets the value of the `TxRef`.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* TxRef.make(0)

  // Set a new value within a transaction
  yield* Effect.transaction(
    TxRef.set(counter, 100)
  )

  console.log(yield* Effect.transaction(TxRef.get(counter))) // 100
})
```

**Signature**

```ts
declare const set: { <A>(value: A): (self: TxRef<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxRef<A>, value: A): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L239)

Since v4.0.0