Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.modifyAt

Updates or removes the specified key using a function from the current
optional value to the next optional value.

**When to use**

Use to decide whether to insert, update, or remove a key based on its current
optional value.

**Example** (Updating or removing a key)

```ts
import { MutableHashMap, Option } from "effect"

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

**See**

- `modify` for updating only when the key already exists
- `set` for inserting or replacing directly
- `remove` for deleting directly

**Signature**

```ts
declare const modifyAt: { <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableHashMap.ts#L659)

Since v2.0.0