Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.toHashSet

Converts the TxHashSet to an immutable HashSet snapshot.

**Example** (Taking a HashSet snapshot)

```ts
import { Effect, HashSet, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.make("x", "y", "z")
  const hashSet = yield* TxHashSet.toHashSet(txSet)

  console.log(HashSet.size(hashSet)) // 3
  console.log(HashSet.has(hashSet, "y")) // true

  // hashSet is a snapshot - modifications to txSet don't affect it
  yield* TxHashSet.add(txSet, "w")
  console.log(HashSet.size(hashSet)) // 3 (unchanged)
  console.log(yield* TxHashSet.size(txSet)) // 4
})
```

**Signature**

```ts
declare const toHashSet: <V>(self: TxHashSet<V>) => Effect.Effect<HashSet.HashSet<V>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TxHashSet.ts#L908)

Since v2.0.0