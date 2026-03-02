Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.map

Maps each value in the HashSet using the provided function.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const numbers = HashSet.make(1, 2, 3)
const doubled = HashSet.map(numbers, (n) => n * 2)

console.log(Array.from(doubled).sort()) // [2, 4, 6]
console.log(HashSet.size(doubled)) // 3

// Mapping can reduce size if function produces duplicates
const strings = HashSet.make("apple", "banana", "cherry")
const lengths = HashSet.map(strings, (s) => s.length)
console.log(Array.from(lengths).sort()) // [5, 6] (apple=5, banana=6, cherry=6)
```

**Signature**

```ts
declare const map: { <V, U>(f: (value: V) => U): (self: HashSet<V>) => HashSet<U>; <V, U>(self: HashSet<V>, f: (value: V) => U): HashSet<U>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L451)

Since v2.0.0