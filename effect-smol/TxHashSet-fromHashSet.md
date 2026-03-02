Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.fromHashSet

Creates a TxHashSet from an existing HashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"
import * as HashSet from "effect/HashSet"

const program = Effect.gen(function*() {
  const hashSet = HashSet.make("x", "y", "z")
  const txSet = yield* TxHashSet.fromHashSet(hashSet)

  console.log(yield* TxHashSet.size(txSet)) // 3
  console.log(yield* TxHashSet.has(txSet, "y")) // true

  // Original hashSet is unchanged when txSet is modified
  yield* TxHashSet.add(txSet, "w")
  console.log(HashSet.size(hashSet)) // 3 (original unchanged)
  console.log(yield* TxHashSet.size(txSet)) // 4
})
```

**Signature**

```ts
declare const fromHashSet: <V>(hashSet: HashSet.HashSet<V>) => Effect.Effect<TxHashSet<V>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L260)

Since v2.0.0