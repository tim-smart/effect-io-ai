Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.union

Creates the union of two TxHashSets, returning a new TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const set1 = yield* TxHashSet.make("a", "b")
  const set2 = yield* TxHashSet.make("b", "c")
  const combined = yield* TxHashSet.union(set1, set2)

  const values = yield* TxHashSet.toHashSet(combined)
  console.log(Array.from(values).sort()) // ["a", "b", "c"]
  console.log(yield* TxHashSet.size(combined)) // 3
})
```

**Signature**

```ts
declare const union: { <V1>(that: TxHashSet<V1>): <V0>(self: TxHashSet<V0>) => Effect.Effect<TxHashSet<V1 | V0>, never, Effect.Transaction>; <V0, V1>(self: TxHashSet<V0>, that: TxHashSet<V1>): Effect.Effect<TxHashSet<V0 | V1>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L514)

Since v2.0.0