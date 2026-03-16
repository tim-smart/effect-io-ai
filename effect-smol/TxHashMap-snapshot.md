Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.snapshot

Returns an immutable snapshot of the current TxHashMap state.

**Example**

```ts
import { Effect, HashMap, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  const liveData = yield* TxHashMap.make(
    ["temperature", 22.5],
    ["humidity", 45.2],
    ["pressure", 1013.25]
  )

  // Take snapshot for reporting
  const snapshot = yield* TxHashMap.snapshot(liveData)

  // Continue modifying live data
  yield* TxHashMap.set(liveData, "temperature", 23.1)
  yield* TxHashMap.set(liveData, "wind_speed", 5.3)

  // Snapshot remains unchanged
  console.log(HashMap.size(snapshot)) // 3
  console.log(HashMap.get(snapshot, "temperature")) // Option.some(22.5)

  // Can use regular HashMap operations on snapshot
  const tempReading = HashMap.get(snapshot, "temperature")
  const humidityReading = HashMap.get(snapshot, "humidity")
})
```

**Signature**

```ts
declare const snapshot: <K, V>(self: TxHashMap<K, V>) => Effect.Effect<HashMap.HashMap<K, V>, never, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L940)

Since v2.0.0