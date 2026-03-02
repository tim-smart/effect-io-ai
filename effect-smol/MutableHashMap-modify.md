Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.modify

Updates the value of the specified key within the MutableHashMap if it exists.
If the key doesn't exist, the map remains unchanged.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

const map = MutableHashMap.make(["count", 5], ["total", 100])

// Increment existing value
MutableHashMap.modify(map, "count", (n) => n + 1)
console.log(MutableHashMap.get(map, "count")) // Some(6)

// Double existing value
MutableHashMap.modify(map, "total", (n) => n * 2)
console.log(MutableHashMap.get(map, "total")) // Some(200)

// Try to modify non-existent key (no effect)
MutableHashMap.modify(map, "missing", (n) => n + 1)
console.log(MutableHashMap.has(map, "missing")) // false

// Pipe-able version
const increment = MutableHashMap.modify("count", (n: number) => n + 1)
increment(map)
```

**Signature**

```ts
declare const modify: { <K, V>(key: K, f: (v: V) => V): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K, f: (v: V) => V): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L434)

Since v2.0.0