Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.groupWith

Group equal, consecutive elements of an `Iterable` into `NonEmptyArray`s using the provided `isEquivalent` function.

**Example**

```ts
import { Iterable } from "effect"

// Group consecutive equal numbers
const numbers = [1, 1, 2, 2, 2, 3, 1, 1]
const grouped = Iterable.groupWith(numbers, (a, b) => a === b)
console.log(Array.from(grouped))
// [[1, 1], [2, 2, 2], [3], [1, 1]]

// Case-insensitive grouping of strings
const words = ["Apple", "APPLE", "banana", "Banana", "cherry"]
const caseInsensitive = (a: string, b: string) =>
  a.toLowerCase() === b.toLowerCase()
const groupedWords = Iterable.groupWith(words, caseInsensitive)
console.log(Array.from(groupedWords))
// [["Apple", "APPLE"], ["banana", "Banana"], ["cherry"]]

// Group by approximate equality
const floats = [1.1, 1.12, 1.9, 2.01, 2.05, 3.5]
const approxEqual = (a: number, b: number) => Math.abs(a - b) < 0.2
const groupedFloats = Iterable.groupWith(floats, approxEqual)
console.log(Array.from(groupedFloats))
// [[1.1, 1.12], [1.9, 2.01, 2.05], [3.5]]

// Only groups consecutive elements
const scattered = [1, 2, 1, 2, 1]
const scatteredGroups = Iterable.groupWith(scattered, (a, b) => a === b)
console.log(Array.from(scatteredGroups))
// [[1], [2], [1], [2], [1]] (no grouping since none are consecutive)
```

**Signature**

```ts
declare const groupWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Iterable<NonEmptyArray<A>>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Iterable<NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1132)

Since v2.0.0