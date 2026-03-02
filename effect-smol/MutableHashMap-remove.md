Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.remove

Removes the specified key from the MutableHashMap, mutating the map in place.
If the key doesn't exist, the map remains unchanged.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

const map = MutableHashMap.make(
  ["key1", 42],
  ["key2", 100],
  ["key3", 200]
)

console.log(MutableHashMap.size(map)) // 3

// Remove existing key
MutableHashMap.remove(map, "key2")
console.log(MutableHashMap.size(map)) // 2
console.log(MutableHashMap.has(map, "key2")) // false

// Remove non-existent key (no effect)
MutableHashMap.remove(map, "nonexistent")
console.log(MutableHashMap.size(map)) // 2

// Pipe-able version
const removeKey = MutableHashMap.remove("key1")
removeKey(map)
console.log(MutableHashMap.size(map)) // 1
```

**Signature**

```ts
declare const remove: { <K>(key: K): <V>(self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L573)

Since v2.0.0