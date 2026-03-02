Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.get

Reads the current value of the `TxRef`.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* TxRef.make(42)

  // Read the value within a transaction
  const value = yield* Effect.transaction(
    TxRef.get(counter)
  )

  console.log(value) // 42
})
```

**Signature**

```ts
declare const get: <A>(self: TxRef<A>) => Effect.Effect<A, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L215)

Since v4.0.0