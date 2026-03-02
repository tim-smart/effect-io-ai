Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.reduce

Reduces the HashSet to a single value by iterating through the values and applying an accumulator function.

**Example**

```ts
import * as HashSet from "effect/HashSet"

const numbers = HashSet.make(1, 2, 3, 4, 5)
const sum = HashSet.reduce(numbers, 0, (acc, n) => acc + n)

console.log(sum) // 15

const strings = HashSet.make("a", "b", "c")
const concatenated = HashSet.reduce(strings, "", (acc, s) => acc + s)
console.log(concatenated) // Order may vary: "abc", "bac", etc.
```

**Signature**

```ts
declare const reduce: { <V, U>(zero: U, f: (accumulator: U, value: V) => U): (self: HashSet<V>) => U; <V, U>(self: HashSet<V>, zero: U, f: (accumulator: U, value: V) => U): U; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L566)

Since v2.0.0