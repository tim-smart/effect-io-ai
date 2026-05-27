Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.fromIterable

Creates a MutableHashMap from an iterable collection of key-value pairs.

**When to use**

Use to create a mutable hash map from an existing iterable of entries.

**Example** (Creating a map from an iterable)

```ts
import { MutableHashMap } from "effect"

const entries = [
  ["apple", 1],
  ["banana", 2],
  ["cherry", 3]
] as const

const map = MutableHashMap.fromIterable(entries)

console.log(MutableHashMap.get(map, "banana")) // Some(2)
console.log(MutableHashMap.size(map)) // 3

// Works with any iterable
const fromMap = MutableHashMap.fromIterable(new Map([["x", 10], ["y", 20]]))
console.log(MutableHashMap.get(fromMap, "x")) // Some(10)
```

**See**

- `make` for creating a map from explicit entries
- `empty` for creating an empty map

**Signature**

```ts
declare const fromIterable: <K, V>(entries: Iterable<readonly [K, V]>) => MutableHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L259)

Since v2.0.0