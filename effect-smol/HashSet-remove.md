Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.remove

Removes a value from the HashSet, returning a new HashSet.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set = HashSet.make("a", "b", "c")
const withoutB = HashSet.remove(set, "b")

console.log(HashSet.size(set)) // 3 (original unchanged)
console.log(HashSet.size(withoutB)) // 2
console.log(HashSet.has(withoutB, "b")) // false

// Removing non-existent value has no effect
const same = HashSet.remove(set, "d")
console.log(HashSet.size(same)) // 3
```

**Signature**

```ts
declare const remove: { <V>(value: V): (self: HashSet<V>) => HashSet<V>; <V>(self: HashSet<V>, value: V): HashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L274)

Since v2.0.0