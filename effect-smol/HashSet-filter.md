Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.filter

Filters the HashSet keeping only values that satisfy the predicate.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const numbers = HashSet.make(1, 2, 3, 4, 5, 6)
const evens = HashSet.filter(numbers, (n) => n % 2 === 0)

console.log(Array.from(evens).sort()) // [2, 4, 6]
console.log(HashSet.size(evens)) // 3
```

**Signature**

```ts
declare const filter: { <V, U extends V>(refinement: Refinement<NoInfer<V>, U>): (self: HashSet<V>) => HashSet<U>; <V>(predicate: Predicate<NoInfer<V>>): (self: HashSet<V>) => HashSet<V>; <V, U extends V>(self: HashSet<V>, refinement: Refinement<V, U>): HashSet<U>; <V>(self: HashSet<V>, predicate: Predicate<V>): HashSet<V>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L476)

Since v2.0.0