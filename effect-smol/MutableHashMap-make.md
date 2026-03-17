Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.make

Creates a MutableHashMap from a variable number of key-value pairs.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

const map = MutableHashMap.make(
  ["key1", 42],
  ["key2", 100],
  ["key3", 200]
)

console.log(MutableHashMap.get(map, "key1")) // Some(42)
console.log(MutableHashMap.size(map)) // 3
```

**Signature**

```ts
declare const make: <Entries extends Array<readonly [any, any]>>(...entries: Entries) => MutableHashMap<Entries[number] extends readonly [infer K, any] ? K : never, Entries[number] extends readonly [any, infer V] ? V : never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L151)

Since v2.0.0