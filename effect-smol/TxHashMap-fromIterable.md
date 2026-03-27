Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.fromIterable

Creates a TxHashMap from an iterable of key-value pairs.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create from various iterable sources
  const configEntries = [
    ["database.host", "localhost"],
    ["database.port", "5432"],
    ["cache.enabled", "true"],
    ["logging.level", "info"]
  ] as const

  const configMap = yield* TxHashMap.fromIterable(configEntries)

  // Verify the configuration was loaded
  const size = yield* TxHashMap.size(configMap)
  console.log(size) // 4

  const dbHost = yield* TxHashMap.get(configMap, "database.host")
  console.log(dbHost) // Option.some("localhost")

  // Can also create from Map, Set of tuples, etc.
  const jsMap = new Map([["key1", "value1"], ["key2", "value2"]])
  const txMapFromJs = yield* TxHashMap.fromIterable(jsMap)
})
```

**Signature**

```ts
declare const fromIterable: <K, V>(entries: Iterable<readonly [K, V]>) => Effect.Effect<TxHashMap<K, V>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L321)

Since v2.0.0