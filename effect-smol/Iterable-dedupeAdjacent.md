Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.dedupeAdjacent

Deduplicates adjacent elements that are identical.

**Example**

```ts
import { Iterable } from "effect"

// Remove adjacent duplicate numbers
const numbers = [1, 1, 2, 2, 2, 3, 1, 1]
const deduped = Iterable.dedupeAdjacent(numbers)
console.log(Array.from(deduped)) // [1, 2, 3, 1]

// Remove adjacent duplicate characters
const letters = "aabbccaa"
const dedupedLetters = Iterable.dedupeAdjacent(letters)
console.log(Array.from(dedupedLetters)) // ["a", "b", "c", "a"]

// Works with objects using deep equality
const objects = [
  { type: "A" },
  { type: "A" },
  { type: "B" },
  { type: "B" },
  { type: "A" }
]
const dedupedObjects = Iterable.dedupeAdjacent(objects)
console.log(Array.from(dedupedObjects).map((o) => o.type)) // ["A", "B", "A"]

// Clean up streaming data
const sensorData = [100, 100, 100, 101, 101, 102, 102, 102, 100]
const cleanedData = Iterable.dedupeAdjacent(sensorData)
console.log(Array.from(cleanedData)) // [100, 101, 102, 100]
```

**Signature**

```ts
declare const dedupeAdjacent: <A>(self: Iterable<A>) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L2217)

Since v2.0.0