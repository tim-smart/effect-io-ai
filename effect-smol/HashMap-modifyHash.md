Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.modifyHash

Sets or removes the specified key using a precomputed hash and an update
function.

**Details**

The update function receives `Some(value)` when the key exists or `None`
when it does not. Returning `Some(newValue)` stores the value, and returning
`None` removes the key or leaves it absent.

**Example** (Updating values with a hash)

```ts
import { Hash, HashMap, Option } from "effect"

// Useful when working with precomputed hashes for performance
const counters = HashMap.make(["downloads", 100], ["views", 250])

// Cache hash computation for frequently accessed keys
const metricKey = "downloads"
const cachedHash = Hash.string(metricKey)

// Update function that increments counter or initializes to 1
const incrementCounter = (current: Option.Option<number>) =>
  Option.isSome(current) ? Option.some(current.value + 1) : Option.some(1)

// Use cached hash for efficient updates in loops
const updated = HashMap.modifyHash(
  counters,
  metricKey,
  cachedHash,
  incrementCounter
)
console.log(HashMap.get(updated, "downloads")) // Option.some(101)

// Add new metric with precomputed hash
const newMetric = "clicks"
const clicksHash = Hash.string(newMetric)
const withClicks = HashMap.modifyHash(
  updated,
  newMetric,
  clicksHash,
  incrementCounter
)
console.log(HashMap.get(withClicks, "clicks")) // Option.some(1)
```

**Signature**

```ts
declare const modifyHash: { <K, V>(key: K, hash: number, f: HashMap.UpdateFn<V>): (self: HashMap<K, V>) => HashMap<K, V>; <K, V>(self: HashMap<K, V>, key: K, hash: number, f: HashMap.UpdateFn<V>): HashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L918)

Since v2.0.0