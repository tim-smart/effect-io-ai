Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.intersection

Creates the intersection of two HashSets.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set1 = HashSet.make("a", "b", "c")
const set2 = HashSet.make("b", "c", "d")
const common = HashSet.intersection(set1, set2)

console.log(Array.from(common).sort()) // ["b", "c"]
console.log(HashSet.size(common)) // 2
```

**Signature**

```ts
declare const intersection: { <V1>(that: HashSet<V1>): <V0>(self: HashSet<V0>) => HashSet<V1 & V0>; <V0, V1>(self: HashSet<V0>, that: HashSet<V1>): HashSet<V0 & V1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L367)

Since v2.0.0