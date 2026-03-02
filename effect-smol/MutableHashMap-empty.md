Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.empty

Creates an empty MutableHashMap.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

const map = MutableHashMap.empty<string, number>()

// Add some entries
MutableHashMap.set(map, "key1", 42)
MutableHashMap.set(map, "key2", 100)

console.log(MutableHashMap.size(map)) // 2
```

**Signature**

```ts
declare const empty: <K, V>() => MutableHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L115)

Since v2.0.0