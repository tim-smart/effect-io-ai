Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.groupBy

Groups all elements by the string or symbol key returned by `f`.

Each property in the returned record contains a non-empty array of elements
that produced that key. Unlike `group`, matching elements do not need to be
consecutive.

**Example** (Grouping by a key)

```ts
import { Iterable } from "effect"

// Group by string length
const words = ["a", "bb", "ccc", "dd", "eee", "f"]
const byLength = Iterable.groupBy(words, (word) => word.length.toString())
console.log(byLength)
// { "1": ["a", "f"], "2": ["bb", "dd"], "3": ["ccc", "eee"] }

// Group by first letter
const names = ["Alice", "Bob", "Charlie", "David", "Anna", "Betty"]
const byFirstLetter = Iterable.groupBy(names, (name) => name[0])
console.log(byFirstLetter)
// { "A": ["Alice", "Anna"], "B": ["Bob", "Betty"], "C": ["Charlie"], "D": ["David"] }

// Group by category
const items = [
  { name: "apple", category: "fruit" },
  { name: "carrot", category: "vegetable" },
  { name: "banana", category: "fruit" },
  { name: "broccoli", category: "vegetable" }
]
const byCategory = Iterable.groupBy(items, (item) => item.category)
console.log(byCategory)
// {
//   "fruit": [{ name: "apple", category: "fruit" }, { name: "banana", category: "fruit" }],
//   "vegetable": [{ name: "carrot", category: "vegetable" }, { name: "broccoli", category: "vegetable" }]
// }

// Group numbers by even/odd
const numbers = [1, 2, 3, 4, 5, 6]
const evenOdd = Iterable.groupBy(numbers, (n) => n % 2 === 0 ? "even" : "odd")
console.log(evenOdd)
// { "odd": [1, 3, 5], "even": [2, 4, 6] }
```

**Signature**

```ts
declare const groupBy: { <A, K extends string | symbol>(f: (a: A) => K): (self: Iterable<A>) => Record<Record.ReadonlyRecord.NonLiteralKey<K>, NonEmptyArray<A>>; <A, K extends string | symbol>(self: Iterable<A>, f: (a: A) => K): Record<Record.ReadonlyRecord.NonLiteralKey<K>, NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1294)

Since v2.0.0