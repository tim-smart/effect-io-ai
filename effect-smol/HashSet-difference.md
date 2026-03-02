Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.difference

Creates the difference of two HashSets (elements in the first set that are not in the second).

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set1 = HashSet.make("a", "b", "c")
const set2 = HashSet.make("b", "d")
const diff = HashSet.difference(set1, set2)

console.log(Array.from(diff).sort()) // ["a", "c"]
console.log(HashSet.size(diff)) // 2
```

**Signature**

```ts
declare const difference: { <V1>(that: HashSet<V1>): <V0>(self: HashSet<V0>) => HashSet<V0>; <V0, V1>(self: HashSet<V0>, that: HashSet<V1>): HashSet<V0>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L393)

Since v2.0.0