Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.every

Tests whether all values in the TxHashSet satisfy the predicate.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const numbers = yield* TxHashSet.make(2, 4, 6, 8)

  console.log(yield* TxHashSet.every(numbers, (n) => n % 2 === 0)) // true
  console.log(yield* TxHashSet.every(numbers, (n) => n > 5)) // false

  const empty = yield* TxHashSet.empty<number>()
  console.log(yield* TxHashSet.every(empty, (n) => n > 0)) // true (vacuously true)
})
```

**Signature**

```ts
declare const every: { <V>(predicate: Predicate<V>): (self: TxHashSet<V>) => Effect.Effect<boolean, never, Effect.Transaction>; <V>(self: TxHashSet<V>, predicate: Predicate<V>): Effect.Effect<boolean, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L702)

Since v2.0.0