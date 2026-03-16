Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.TxHashMap

A TxHashMap is a transactional hash map data structure that provides atomic operations
on key-value pairs within Effect transactions. It uses an immutable HashMap internally
with TxRef for transactional semantics, ensuring all operations are performed atomically.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a transactional hash map
  const txMap = yield* TxHashMap.make(["user1", "Alice"], ["user2", "Bob"])

  // Single operations are automatically transactional
  yield* TxHashMap.set(txMap, "user3", "Charlie")
  const user = yield* TxHashMap.get(txMap, "user1")
  console.log(user) // Option.some("Alice")

  // Multi-step atomic operations
  yield* Effect.transaction(
    Effect.gen(function*() {
      const currentUser = yield* TxHashMap.get(txMap, "user1")
      if (currentUser._tag === "Some") {
        yield* TxHashMap.set(txMap, "user1", currentUser.value + "_updated")
        yield* TxHashMap.remove(txMap, "user2")
      }
    })
  )

  const size = yield* TxHashMap.size(txMap)
  console.log(size) // 2
})
```

**Signature**

```ts
export interface TxHashMap<in out K, in out V> extends Inspectable, Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly ref: TxRef.TxRef<HashMap.HashMap<K, V>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L75)

Since v2.0.0