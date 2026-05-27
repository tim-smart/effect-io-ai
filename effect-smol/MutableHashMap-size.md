Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.size

Returns the number of key-value pairs in the MutableHashMap.

**When to use**

Use to read how many entries are currently stored in the mutable hash map.

**Example** (Checking map size)

```ts
import { MutableHashMap } from "effect"

const map = MutableHashMap.empty<string, number>()
console.log(MutableHashMap.size(map)) // 0

MutableHashMap.set(map, "key1", 42)
MutableHashMap.set(map, "key2", 100)
console.log(MutableHashMap.size(map)) // 2

MutableHashMap.remove(map, "key1")
console.log(MutableHashMap.size(map)) // 1

MutableHashMap.clear(map)
console.log(MutableHashMap.size(map)) // 0
```

**See**

- `isEmpty` for checking whether the map has no entries

**Signature**

```ts
declare const size: <K, V>(self: MutableHashMap<K, V>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L833)

Since v2.0.0