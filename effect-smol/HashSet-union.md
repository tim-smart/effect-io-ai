Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.union

Creates the union of two HashSets.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set1 = HashSet.make("a", "b")
const set2 = HashSet.make("b", "c")
const combined = HashSet.union(set1, set2)

console.log(Array.from(combined).sort()) // ["a", "b", "c"]
console.log(HashSet.size(combined)) // 3
```

**Signature**

```ts
declare const union: { <V1>(that: HashSet<V1>): <V0>(self: HashSet<V0>) => HashSet<V1 | V0>; <V0, V1>(self: HashSet<V0>, that: HashSet<V1>): HashSet<V0 | V1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L341)

Since v2.0.0