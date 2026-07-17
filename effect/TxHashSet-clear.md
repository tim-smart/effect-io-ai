Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.clear

Removes all values from the TxHashSet.

**Details**

This function mutates the original TxHashSet by clearing all values. It does not return a new TxHashSet reference.

**Example** (Clearing all values)

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.make("a", "b", "c")
  console.log(yield* TxHashSet.size(txSet)) // 3

  yield* TxHashSet.clear(txSet)
  console.log(yield* TxHashSet.size(txSet)) // 0
  console.log(yield* TxHashSet.isEmpty(txSet)) // true
})
```

**Signature**

```ts
declare const clear: <V>(self: TxHashSet<V>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxHashSet.ts#L509)

Since v4.0.0