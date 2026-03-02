Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.map

Maps each value in the TxHashSet using the provided function, returning a new TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const numbers = yield* TxHashSet.make(1, 2, 3)
  const doubled = yield* TxHashSet.map(numbers, (n) => n * 2)

  const values = yield* TxHashSet.toHashSet(doubled)
  console.log(Array.from(values).sort()) // [2, 4, 6]
  console.log(yield* TxHashSet.size(doubled)) // 3

  // Mapping can reduce size if function produces duplicates
  const strings = yield* TxHashSet.make("apple", "banana", "cherry")
  const lengths = yield* TxHashSet.map(strings, (s) => s.length)
  const lengthValues = yield* TxHashSet.toHashSet(lengths)
  console.log(Array.from(lengthValues).sort()) // [5, 6] (apple=5, banana=6, cherry=6)
})
```

**Signature**

```ts
declare const map: { <V, U>(f: (value: V) => U): (self: TxHashSet<V>) => Effect.Effect<TxHashSet<U>, never, Effect.Transaction>; <V, U>(self: TxHashSet<V>, f: (value: V) => U): Effect.Effect<TxHashSet<U>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L740)

Since v2.0.0