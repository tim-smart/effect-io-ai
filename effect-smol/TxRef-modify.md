Package: `effect`<br />
Module: `TxRef`<br />

## TxRef.modify

Modifies the value of the `TxRef` using the provided function.

**Example**

```ts
import { Effect, TxRef } from "effect"

const program = Effect.gen(function*() {
  const counter = yield* TxRef.make(0)

  // Modify and return both old and new value
  const result = yield* TxRef.modify(counter, (current) => [current * 2, current + 1])

  console.log(result) // 0 (the return value: current * 2)
  console.log(yield* TxRef.get(counter)) // 1 (the new value: current + 1)
})
```

**Signature**

```ts
declare const modify: { <A, R>(f: (current: NoInfer<A>) => [returnValue: R, newValue: A]): (self: TxRef<A>) => Effect.Effect<R>; <A, R>(self: TxRef<A>, f: (current: A) => [returnValue: R, newValue: A]): Effect.Effect<R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxRef.ts#L131)

Since v4.0.0