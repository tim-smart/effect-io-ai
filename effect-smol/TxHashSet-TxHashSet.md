Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.TxHashSet

A TxHashSet is a transactional hash set data structure that provides atomic operations on unique values within Effect transactions. It uses an immutable HashSet internally with TxRef for transactional semantics, ensuring all operations are performed atomically.

**Details**

Mutation operations such as `add`, `remove`, and `clear` update the original TxHashSet and return `Effect<void>` or `Effect<boolean>`. Transform operations such as `union`, `intersection`, `difference`, `map`, and `filter` create new TxHashSet instances and leave the original TxHashSet unchanged.

**Example** (Using transactional hash sets)

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  // Create a transactional hash set
  const txSet = yield* TxHashSet.make("apple", "banana", "cherry")

  // Single operations are automatically transactional
  yield* TxHashSet.add(txSet, "grape")
  const hasApple = yield* TxHashSet.has(txSet, "apple")
  console.log(hasApple) // true

  // Multi-step atomic operations
  yield* Effect.tx(
    Effect.gen(function*() {
      const hasCherry = yield* TxHashSet.has(txSet, "cherry")
      if (hasCherry) {
        yield* TxHashSet.remove(txSet, "cherry")
        yield* TxHashSet.add(txSet, "orange")
      }
    })
  )

  const size = yield* TxHashSet.size(txSet)
  console.log(size) // 4
})
```

**Signature**

```ts
export interface TxHashSet<in out V> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly ref: TxRef.TxRef<HashSet.HashSet<V>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L98)

Since v4.0.0