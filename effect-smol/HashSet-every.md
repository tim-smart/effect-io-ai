Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.every

Tests whether all values in the HashSet satisfy the predicate.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const numbers = HashSet.make(2, 4, 6, 8)

console.log(HashSet.every(numbers, (n) => n % 2 === 0)) // true
console.log(HashSet.every(numbers, (n) => n > 5)) // false

const empty = HashSet.empty<number>()
console.log(HashSet.every(empty, (n) => n > 0)) // true (vacuously true)
```

**Signature**

```ts
declare const every: { <V>(predicate: Predicate<V>): (self: HashSet<V>) => boolean; <V>(self: HashSet<V>, predicate: Predicate<V>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L538)

Since v2.0.0