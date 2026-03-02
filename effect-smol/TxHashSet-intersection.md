Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.intersection

Creates the intersection of two TxHashSets, returning a new TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const set1 = yield* TxHashSet.make("a", "b", "c")
  const set2 = yield* TxHashSet.make("b", "c", "d")
  const common = yield* TxHashSet.intersection(set1, set2)

  const values = yield* TxHashSet.toHashSet(common)
  console.log(Array.from(values).sort()) // ["b", "c"]
  console.log(yield* TxHashSet.size(common)) // 2
})
```

**Signature**

```ts
declare const intersection: { <V1>(that: TxHashSet<V1>): <V0>(self: TxHashSet<V0>) => Effect.Effect<TxHashSet<V1 & V0>, never, Effect.Transaction>; <V0, V1>(self: TxHashSet<V0>, that: TxHashSet<V1>): Effect.Effect<TxHashSet<V0 & V1>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L554)

Since v2.0.0