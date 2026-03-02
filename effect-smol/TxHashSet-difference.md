Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.difference

Creates the difference of two TxHashSets (elements in the first set that are not in the second), returning a new TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const set1 = yield* TxHashSet.make("a", "b", "c")
  const set2 = yield* TxHashSet.make("b", "d")
  const diff = yield* TxHashSet.difference(set1, set2)

  const values = yield* TxHashSet.toHashSet(diff)
  console.log(Array.from(values).sort()) // ["a", "c"]
  console.log(yield* TxHashSet.size(diff)) // 2
})
```

**Signature**

```ts
declare const difference: { <V1>(that: TxHashSet<V1>): <V0>(self: TxHashSet<V0>) => Effect.Effect<TxHashSet<V0>, never, Effect.Transaction>; <V0, V1>(self: TxHashSet<V0>, that: TxHashSet<V1>): Effect.Effect<TxHashSet<V0>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L594)

Since v2.0.0