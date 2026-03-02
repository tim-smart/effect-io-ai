Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.make

Creates a new `TxRef` with the specified initial value.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  // Create a transactional reference with initial value
  const counter = yield* Effect.transaction(TxRef.make(0))
  const name = yield* Effect.transaction(TxRef.make("Alice"))

  // Use in transactions
  yield* Effect.transaction(Effect.gen(function*() {
    yield* TxRef.set(counter, 42)
    yield* TxRef.set(name, "Bob")
  }))

  console.log(yield* Effect.transaction(TxRef.get(counter))) // 42
  console.log(yield* Effect.transaction(TxRef.get(name))) // "Bob"
})
```

**Signature**

```ts
declare const make: <A>(initial: A) => Effect.Effect<TxRef<A>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L81)

Since v4.0.0