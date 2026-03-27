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
  yield* Effect.tx(
    TxRef.set(counter, 100)
  )

  console.log(yield* TxRef.get(counter)) // 100
})
```

**Signature**

```ts
declare const set: { <A>(value: A): (self: TxRef<A>) => Effect.Effect<void>; <A>(self: TxRef<A>, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L226)

Since v4.0.0