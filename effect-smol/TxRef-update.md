Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.update

Updates the value of the `TxRef` using the provided function.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* TxRef.make(10)

  // Update the value using a function
  yield* Effect.transaction(
    TxRef.update(counter, (current) => current * 2)
  )

  console.log(yield* Effect.transaction(TxRef.get(counter))) // 20
})
```

**Signature**

```ts
declare const update: { <A>(f: (current: NoInfer<A>) => A): (self: TxRef<A>) => Effect.Effect<void, never, Effect.Transaction>; <A>(self: TxRef<A>, f: (current: A) => A): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L185)

Since v4.0.0