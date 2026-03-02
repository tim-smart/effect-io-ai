Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.isHashSet

Checks if a value is a HashSet.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const set = HashSet.make(1, 2, 3)
const array = [1, 2, 3]

console.log(HashSet.isHashSet(set)) // true
console.log(HashSet.isHashSet(array)) // false
console.log(HashSet.isHashSet(null)) // false
```

**Signature**

```ts
declare const isHashSet: { <V>(u: Iterable<V>): u is HashSet<V>; (u: unknown): u is HashSet<unknown>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L175)

Since v2.0.0