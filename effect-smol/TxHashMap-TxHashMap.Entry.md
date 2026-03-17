Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.TxHashMap.Entry

Extracts the entry type from a TxHashMap type.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a configuration TxHashMap
  const config = yield* TxHashMap.make(
    ["api_url", "https://api.example.com"],
    ["timeout", "5000"],
    ["retries", "3"]
  )

  // Extract the entry type [string, string]
  type ConfigEntry = TxHashMap.TxHashMap.Entry<typeof config>

  // Use the extracted type for processing entries
  const processEntry = ([key, value]: ConfigEntry) => {
    return `${key}=${value}`
  }

  // Get all entries and process them
  const entries = yield* TxHashMap.entries(config)
  const configLines = entries.map(processEntry)
  console.log(configLines) // ["api_url=https://api.example.com", ...]
})
```

**Signature**

```ts
type Entry<T> = T extends TxHashMap<infer K, infer V> ? readonly [K, V] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L210)

Since v2.0.0