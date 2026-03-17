Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.size

Returns the number of key-value pairs in the MutableHashMap.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

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

**Signature**

```ts
declare const size: <K, V>(self: MutableHashMap<K, V>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L674)

Since v2.0.0