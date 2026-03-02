Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.reduce

Reduces the TxHashSet to a single value by iterating through the values and applying an accumulator function.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const numbers = yield* TxHashSet.make(1, 2, 3, 4, 5)
  const sum = yield* TxHashSet.reduce(numbers, 0, (acc, n) => acc + n)

  console.log(sum) // 15

  const strings = yield* TxHashSet.make("a", "b", "c")
  const concatenated = yield* TxHashSet.reduce(strings, "", (acc, s) => acc + s)
  console.log(concatenated) // Order may vary: "abc", "bac", etc.
})
```

**Signature**

```ts
declare const reduce: { <V, U>(zero: U, f: (accumulator: U, value: V) => U): (self: TxHashSet<V>) => Effect.Effect<U, never, Effect.Transaction>; <V, U>(self: TxHashSet<V>, zero: U, f: (accumulator: U, value: V) => U): Effect.Effect<U, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L830)

Since v2.0.0