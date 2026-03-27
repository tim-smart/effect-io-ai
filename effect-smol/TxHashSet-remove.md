Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.remove

Removes a value from the TxHashSet.

**Mutation behavior**: This function mutates the original TxHashSet by removing
the specified value. It does not return a new TxHashSet reference.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.make("a", "b", "c")

  const removed = yield* TxHashSet.remove(txSet, "b")
  console.log(removed) // true (value existed and was removed)
  console.log(yield* TxHashSet.size(txSet)) // 2
  console.log(yield* TxHashSet.has(txSet, "b")) // false

  // Removing non-existent value returns false
  const notRemoved = yield* TxHashSet.remove(txSet, "d")
  console.log(notRemoved) // false
})
```

**Signature**

```ts
declare const remove: { <V>(value: V): (self: TxHashSet<V>) => Effect.Effect<boolean>; <V>(self: TxHashSet<V>, value: V): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L352)

Since v2.0.0