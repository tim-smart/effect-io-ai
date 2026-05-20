Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.entries

Returns an `IterableIterator` of the entries within the `HashMap`.

**Example** (Iterating entries)

```ts
import { HashMap } from "effect"

// Create a configuration map
const config = HashMap.make(
  ["database.host", "localhost"],
  ["database.port", "5432"],
  ["cache.enabled", "true"]
)

// Sort the derived array for deterministic output
const settings = Array.from(HashMap.entries(config))
  .sort(([left], [right]) => left.localeCompare(right))
  .map(([key, value]) => `Setting ${key} = ${value}`)

console.log(settings)
// ["Setting cache.enabled = true", "Setting database.host = localhost", "Setting database.port = 5432"]

// Convert to array when you need all entries at once
const allEntries = Array.from(HashMap.entries(config))
console.log(allEntries.length) // 3
```

**Signature**

```ts
declare const entries: <K, V>(self: HashMap<K, V>) => IterableIterator<[K, V]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L687)

Since v2.0.0