Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.HashMap

A HashMap is an immutable key-value data structure that provides efficient lookup,
insertion, and deletion operations. It uses a Hash Array Mapped Trie (HAMT) internally
for structural sharing and optimal performance.

**Example**

```ts
import * as HashMap from "effect/HashMap"

// Create a HashMap
const map = HashMap.make(["a", 1], ["b", 2], ["c", 3])

// Access values
const valueA = HashMap.get(map, "a") // Option.some(1)
const valueD = HashMap.get(map, "d") // Option.none()

// Check if key exists
console.log(HashMap.has(map, "b")) // true

// Add/update values (returns new HashMap)
const updated = HashMap.set(map, "d", 4)
console.log(HashMap.size(updated)) // 4
```

**Signature**

```ts
export interface HashMap<out Key, out Value> extends Iterable<[Key, Value]>, Equal, Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L42)

Since v2.0.0