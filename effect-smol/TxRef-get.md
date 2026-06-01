Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.get

Reads the current value of the `TxRef`.

**When to use**

Use to read the current value of a `TxRef`.

**Example** (Reading transactional references)

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* TxRef.make(42)

  // Read the value within a transaction
  const value = yield* Effect.tx(
    TxRef.get(counter)
  )

  console.log(value) // 42
})
```

**Signature**

```ts
declare const get: <A>(self: TxRef<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L297)

Since v2.0.0