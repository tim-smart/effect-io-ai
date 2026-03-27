Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.TxHashSet

A TxHashSet is a transactional hash set data structure that provides atomic operations
on unique values within Effect transactions. It uses an immutable HashSet internally
with TxRef for transactional semantics, ensuring all operations are performed atomically.

## Mutation vs Return Behavior

**Mutation operations** (add, remove, clear) modify the original TxHashSet and return `Effect<void>` or `Effect<boolean>`:
- These operations mutate the TxHashSet in place
- They do not create new TxHashSet instances
- Examples: `add`, `remove`, `clear`

**Transform operations** (union, intersection, difference, map, filter) create new TxHashSet instances:
- These operations return `Effect<TxHashSet<T>>` with a new instance
- The original TxHashSet remains unchanged
- Examples: `union`, `intersection`, `difference`, `map`, `filter`

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L87)

Since v2.0.0