Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.filter

Filters the TxHashSet keeping only values that satisfy the predicate, returning a new TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const numbers = yield* TxHashSet.make(1, 2, 3, 4, 5, 6)
  const evens = yield* TxHashSet.filter(numbers, (n) => n % 2 === 0)

  const values = yield* TxHashSet.toHashSet(evens)
  console.log(Array.from(values).sort()) // [2, 4, 6]
  console.log(yield* TxHashSet.size(evens)) // 3
})
```

**Signature**

```ts
declare const filter: { <V, U extends V>(refinement: Refinement<NoInfer<V>, U>): (self: TxHashSet<V>) => Effect.Effect<TxHashSet<U>, never, Effect.Transaction>; <V>(predicate: Predicate<NoInfer<V>>): (self: TxHashSet<V>) => Effect.Effect<TxHashSet<V>, never, Effect.Transaction>; <V, U extends V>(self: TxHashSet<V>, refinement: Refinement<V, U>): Effect.Effect<TxHashSet<U>, never, Effect.Transaction>; <V>(self: TxHashSet<V>, predicate: Predicate<V>): Effect.Effect<TxHashSet<V>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L773)

Since v2.0.0