Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.modifyAt

Sets or removes the specified key in the MutableHashMap using an update function.
The function receives the current value as an Option and returns an Option.
If the function returns Some, the key is set to that value.
If the function returns None, the key is removed.

**Example**

```ts
import * as MutableHashMap from "effect/MutableHashMap"
import * as Option from "effect/Option"

const map = MutableHashMap.make(["count", 5])

// Update existing key
MutableHashMap.modifyAt(
  map,
  "count",
  (option) => Option.map(option, (n) => n * 2)
)
console.log(MutableHashMap.get(map, "count")) // Some(10)

// Add new key
MutableHashMap.modifyAt(
  map,
  "new",
  (option) => Option.isNone(option) ? Option.some(42) : option
)
console.log(MutableHashMap.get(map, "new")) // Some(42)

// Remove key by returning None
MutableHashMap.modifyAt(map, "count", () => Option.none())
console.log(MutableHashMap.has(map, "count")) // false

// Conditional update
MutableHashMap.modifyAt(
  map,
  "new",
  (option) => Option.filter(option, (n) => n > 50) // Remove if <= 50
)
console.log(MutableHashMap.has(map, "new")) // false (42 <= 50)
```

**Signature**

```ts
declare const modifyAt: { <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L513)

Since v2.0.0