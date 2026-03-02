Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.group

Group equal, consecutive elements of an `Iterable` into `NonEmptyArray`s.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 1, 2, 2, 2, 3, 1, 1]
const grouped = Iterable.group(numbers)
console.log(Array.from(grouped))
// [[1, 1], [2, 2, 2], [3], [1, 1]]

const letters = "aabbccaa"
const groupedLetters = Iterable.group(letters)
console.log(Array.from(groupedLetters))
// [["a", "a"], ["b", "b"], ["c", "c"], ["a", "a"]]

// Works with objects using deep equality
const objects = [
  { type: "A", value: 1 },
  { type: "A", value: 1 },
  { type: "B", value: 2 },
  { type: "A", value: 1 }
]
const groupedObjects = Iterable.group(objects)
console.log(Array.from(groupedObjects).length) // 3 groups
// Note: Only consecutive equal objects are grouped together
```

**Signature**

```ts
declare const group: <A>(self: Iterable<A>) => Iterable<NonEmptyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1204)

Since v2.0.0