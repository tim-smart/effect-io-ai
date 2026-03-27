Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.forEach

Executes a side-effect function for each entry in the TxHashMap.
The function receives the value and key as parameters and can perform effects.

**Example**

```ts
import { Console, Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a log processing map
  const logs = yield* TxHashMap.make(
    ["error.log", { size: 1024, level: "error" }],
    ["access.log", { size: 2048, level: "info" }],
    ["debug.log", { size: 512, level: "debug" }]
  )

  // Process each log file with side effects
  yield* TxHashMap.forEach(logs, (logInfo, filename) =>
    Effect.gen(function*() {
      yield* Console.log(
        `Processing ${filename}: ${logInfo.size} bytes, level: ${logInfo.level}`
      )
      if (logInfo.level === "error") {
        yield* Console.log(`⚠️  Error log detected: ${filename}`)
      }
    }))

  // Data-last usage with pipe
  yield* logs.pipe(
    TxHashMap.forEach((logInfo) =>
      logInfo.size > 1000
        ? Console.log(`Large log file: ${logInfo.size} bytes`)
        : Effect.void
    )
  )
})
```

**Signature**

```ts
declare const forEach: { <V, K, R, E>(f: (value: V, key: K) => Effect.Effect<void, E, R>): (self: TxHashMap<K, V>) => Effect.Effect<void, E, R>; <K, V, R, E>(self: TxHashMap<K, V>, f: (value: V, key: K) => Effect.Effect<void, E, R>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1840)

Since v2.0.0