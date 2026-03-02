Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.add

Adds a value to the TxHashSet. If the value already exists, the operation has no effect.

**Mutation behavior**: This function mutates the original TxHashSet by adding
the specified value. It does not return a new TxHashSet reference.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.make("a", "b")

  yield* TxHashSet.add(txSet, "c")
  console.log(yield* TxHashSet.size(txSet)) // 3
  console.log(yield* TxHashSet.has(txSet, "c")) // true

  // Adding existing value has no effect
  yield* TxHashSet.add(txSet, "a")
  console.log(yield* TxHashSet.size(txSet)) // 3 (unchanged)
})
```

**Signature**

```ts
declare const add: { <V>(value: V): (self: TxHashSet<V>) => Effect.Effect<void, never, Effect.Transaction>; <V>(self: TxHashSet<V>, value: V): Effect.Effect<void, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L317)

Since v2.0.0