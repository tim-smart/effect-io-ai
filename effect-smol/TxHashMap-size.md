Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.size

Returns the number of entries in the TxHashMap.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const metrics = yield* TxHashMap.make(
    ["requests", 1000],
    ["errors", 5],
    ["users", 50]
  )

  const count = yield* TxHashMap.size(metrics)
  console.log(count) // 3

  // Add more metrics
  yield* TxHashMap.set(metrics, "response_time", 250)
  const newCount = yield* TxHashMap.size(metrics)
  console.log(newCount) // 4

  // Remove a metric
  yield* TxHashMap.remove(metrics, "errors")
  const finalCount = yield* TxHashMap.size(metrics)
  console.log(finalCount) // 3
})
```

**Signature**

```ts
declare const size: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L581)

Since v2.0.0