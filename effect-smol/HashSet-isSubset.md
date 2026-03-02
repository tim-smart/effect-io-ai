Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.isSubset

Checks if a HashSet is a subset of another HashSet.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const small = HashSet.make("a", "b")
const large = HashSet.make("a", "b", "c", "d")
const other = HashSet.make("x", "y")

console.log(HashSet.isSubset(small, large)) // true
console.log(HashSet.isSubset(large, small)) // false
console.log(HashSet.isSubset(small, other)) // false
console.log(HashSet.isSubset(small, small)) // true
```

**Signature**

```ts
declare const isSubset: { <V1>(that: HashSet<V1>): <V0>(self: HashSet<V0>) => boolean; <V0, V1>(self: HashSet<V0>, that: HashSet<V1>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L421)

Since v2.0.0