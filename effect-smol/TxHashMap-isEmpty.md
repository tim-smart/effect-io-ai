Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.isEmpty

Checks if the TxHashMap is empty.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Start with empty map
  const cache = yield* TxHashMap.empty<string, any>()
  const empty = yield* TxHashMap.isEmpty(cache)
  console.log(empty) // true

  // Add an item
  yield* TxHashMap.set(cache, "key1", "value1")
  const stillEmpty = yield* TxHashMap.isEmpty(cache)
  console.log(stillEmpty) // false

  // Clear and check again
  yield* TxHashMap.clear(cache)
  const emptyAgain = yield* TxHashMap.isEmpty(cache)
  console.log(emptyAgain) // true
})
```

**Signature**

```ts
declare const isEmpty: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L615)

Since v2.0.0