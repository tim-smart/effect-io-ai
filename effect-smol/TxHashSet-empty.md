Package: `effect`<br />
Module: `TxHashSet`<br />

## TxHashSet.empty

Creates an empty TxHashSet.

**Example**

```ts
import { Effect, TxHashSet } from "effect"

const program = Effect.gen(function*() {
  const txSet = yield* TxHashSet.empty<string>()

  console.log(yield* TxHashSet.size(txSet)) // 0
  console.log(yield* TxHashSet.isEmpty(txSet)) // true

  // Add some values
  yield* TxHashSet.add(txSet, "hello")
  yield* TxHashSet.add(txSet, "world")
  console.log(yield* TxHashSet.size(txSet)) // 2
})
```

**Signature**

```ts
declare const empty: <V = never>() => Effect.Effect<TxHashSet<V>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashSet.ts#L168)

Since v2.0.0