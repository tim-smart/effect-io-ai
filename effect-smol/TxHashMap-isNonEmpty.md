Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.isNonEmpty

Checks if the TxHashMap is non-empty.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const inventory = yield* TxHashMap.make(["laptop", 5])

  const hasItems = yield* TxHashMap.isNonEmpty(inventory)
  console.log(hasItems) // true

  // Clear inventory
  yield* TxHashMap.clear(inventory)
  const stillHasItems = yield* TxHashMap.isNonEmpty(inventory)
  console.log(stillHasItems) // false
})
```

**Signature**

```ts
declare const isNonEmpty: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L644)

Since v2.0.0