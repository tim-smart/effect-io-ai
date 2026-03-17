Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.fromIterable

Creates a MutableHashMap from an iterable collection of key-value pairs.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"

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

**Signature**

```ts
declare const fromIterable: <K, V>(entries: Iterable<readonly [K, V]>) => MutableHashMap<K, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L184)

Since v2.0.0