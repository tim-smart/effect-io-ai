Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.some

Tests whether at least one value in the HashSet satisfies the predicate.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const numbers = HashSet.make(1, 2, 3, 4, 5)

console.log(HashSet.some(numbers, (n) => n > 3)) // true
console.log(HashSet.some(numbers, (n) => n > 10)) // false

const empty = HashSet.empty<number>()
console.log(HashSet.some(empty, (n) => n > 0)) // false
```

**Signature**

```ts
declare const some: { <V>(predicate: Predicate<V>): (self: HashSet<V>) => boolean; <V>(self: HashSet<V>, predicate: Predicate<V>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L511)

Since v2.0.0