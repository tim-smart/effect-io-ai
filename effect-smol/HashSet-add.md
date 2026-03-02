Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.add

Adds a value to the HashSet, returning a new HashSet.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set = HashSet.make("a", "b")
const withC = HashSet.add(set, "c")

console.log(HashSet.size(set)) // 2 (original unchanged)
console.log(HashSet.size(withC)) // 3
console.log(HashSet.has(withC, "c")) // true

// Adding existing value has no effect
const same = HashSet.add(set, "a")
console.log(HashSet.size(same)) // 2
```

**Signature**

```ts
declare const add: { <V>(value: V): (self: HashSet<V>) => HashSet<V>; <V>(self: HashSet<V>, value: V): HashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L202)

Since v2.0.0