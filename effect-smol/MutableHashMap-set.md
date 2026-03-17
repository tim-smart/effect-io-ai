Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.set

Sets a key-value pair in the MutableHashMap, mutating the map in place.
If the key already exists, its value is updated.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

const map = MutableHashMap.empty<string, number>()

// Add new entries
MutableHashMap.set(map, "key1", 42)
MutableHashMap.set(map, "key2", 100)

console.log(MutableHashMap.get(map, "key1")) // Some(42)
console.log(MutableHashMap.size(map)) // 2

// Update existing entry
MutableHashMap.set(map, "key1", 999)
console.log(MutableHashMap.get(map, "key1")) // Some(999)

// Pipe-able version
const setKey = MutableHashMap.set("key3", 300)
setKey(map)
console.log(MutableHashMap.size(map)) // 3
```

**Signature**

```ts
declare const set: { <K, V>(key: K, value: V): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K, value: V): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L367)

Since v2.0.0