Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.entries

Returns an `IterableIterator` of the entries within the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

// Create a configuration map
const config = HashMap.make(
  ["database.host", "localhost"],
  ["database.port", "5432"],
  ["cache.enabled", "true"]
)

// Get entries iterator for processing
const entries = HashMap.entries(config)

// Process each configuration entry
for (const [key, value] of entries) {
  console.log(`Setting ${key} = ${value}`)
}
// Setting database.host = localhost
// Setting database.port = 5432
// Setting cache.enabled = true

// Convert to array when you need all entries at once
const allEntries = Array.from(HashMap.entries(config))
console.log(allEntries.length) // 3
```

**Signature**

```ts
declare const entries: <K, V>(self: HashMap<K, V>) => IterableIterator<[K, V]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L592)

Since v2.0.0