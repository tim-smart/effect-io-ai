Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.modifyHash

Alter the value of the specified key in the `HashMap` using the specified
update function. The value of the specified key will be computed using the
provided hash.

The update function will be invoked with the current value of the key if it
exists, or `None` if no such value exists.

This function will always either update or insert a value into the `HashMap`.

**Example**

```ts
import { Hash } from "effect"
import * as HashMap from "effect/HashMap"
import * as Option from "effect/Option"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L809)

Since v2.0.0