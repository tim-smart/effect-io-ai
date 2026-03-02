Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.dedupeAdjacentWith

Deduplicates adjacent elements that are identical using the provided `isEquivalent` function.

**Example**

```ts
import { Iterable } from "effect"

// Remove adjacent duplicates with custom equality
const numbers = [1, 1, 2, 2, 3, 1, 1]
const dedupedNumbers = Iterable.dedupeAdjacentWith(numbers, (a, b) => a === b)
console.log(Array.from(dedupedNumbers)) // [1, 2, 3, 1]

// Case-insensitive deduplication
const words = ["Hello", "HELLO", "world", "World", "test"]
const caseInsensitive = (a: string, b: string) =>
  a.toLowerCase() === b.toLowerCase()
const dedupedWords = Iterable.dedupeAdjacentWith(words, caseInsensitive)
console.log(Array.from(dedupedWords)) // ["Hello", "world", "test"]

// Deduplication by object property
const users = [
  { id: 1, name: "Alice" },
  { id: 1, name: "Alice Updated" }, // different name, same id
  { id: 2, name: "Bob" },
  { id: 2, name: "Bob" },
  { id: 3, name: "Charlie" }
]
const byId = (a: typeof users[0], b: typeof users[0]) => a.id === b.id
const dedupedUsers = Iterable.dedupeAdjacentWith(users, byId)
console.log(Array.from(dedupedUsers).map((u) => u.id)) // [1, 2, 3]

// Approximate numeric equality
const floats = [1.0, 1.01, 1.02, 2.0, 2.01, 3.0]
const approxEqual = (a: number, b: number) => Math.abs(a - b) < 0.1
const dedupedFloats = Iterable.dedupeAdjacentWith(floats, approxEqual)
console.log(Array.from(dedupedFloats)) // [1.0, 2.0, 3.0]
```

**Signature**

```ts
declare const dedupeAdjacentWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L2151)

Since v2.0.0