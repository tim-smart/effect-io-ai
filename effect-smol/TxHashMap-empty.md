Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.empty

Creates an empty TxHashMap.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create an empty transactional hash map
  const emptyMap = yield* TxHashMap.empty<string, number>()

  // Verify it's empty
  const isEmpty = yield* TxHashMap.isEmpty(emptyMap)
  console.log(isEmpty) // true

  const size = yield* TxHashMap.size(emptyMap)
  console.log(size) // 0

  // Start adding elements
  yield* TxHashMap.set(emptyMap, "first", 1)
  const newSize = yield* TxHashMap.size(emptyMap)
  console.log(newSize) // 1
})
```

**Signature**

```ts
declare const empty: <K, V>() => Effect.Effect<TxHashMap<K, V>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L241)

Since v2.0.0