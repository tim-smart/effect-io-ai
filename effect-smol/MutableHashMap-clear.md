Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.clear

Removes all key-value pairs from the MutableHashMap, mutating the map in place.
The map becomes empty after this operation.

**When to use**

Use to empty a mutable hash map while keeping the same map instance.

**Example** (Clearing all entries)

```ts
import { MutableHashMap } from "effect"

const map = MutableHashMap.make(
  ["key1", 42],
  ["key2", 100],
  ["key3", 200]
)

console.log(MutableHashMap.size(map)) // 3

// Clear all entries
MutableHashMap.clear(map)

console.log(MutableHashMap.size(map)) // 0
console.log(MutableHashMap.has(map, "key1")) // false

// Can still add new entries after clearing
MutableHashMap.set(map, "new", 999)
console.log(MutableHashMap.size(map)) // 1
```

**See**

- `remove` for deleting one key
- `empty` for creating a fresh empty map

**Signature**

```ts
declare const clear: <K, V>(self: MutableHashMap<K, V>) => MutableHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L796)

Since v2.0.0