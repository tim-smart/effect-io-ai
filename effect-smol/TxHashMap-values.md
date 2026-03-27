Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.values

Returns an array of all values in the TxHashMap.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const scores = yield* TxHashMap.make(
    ["alice", 95],
    ["bob", 87],
    ["charlie", 92]
  )

  const allScores = yield* TxHashMap.values(scores)
  console.log(allScores.sort()) // [87, 92, 95]

  // Calculate average
  const average = allScores.reduce((sum, score) => sum + score, 0) /
    allScores.length
  console.log(average) // 91.33

  // Find maximum
  const maxScore = Math.max(...allScores)
  console.log(maxScore) // 95
})
```

**Signature**

```ts
declare const values: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<Array<V>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L861)

Since v2.0.0