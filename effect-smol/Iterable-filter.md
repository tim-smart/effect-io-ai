Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.filter

Filters an iterable to only include elements that match a predicate.

This function creates a new iterable containing only the elements for which
the predicate function returns true. Like map, this operation is lazy and
elements are only tested when the iterable is consumed.

**Example**

```ts
import { Iterable } from "effect"

// Filter even numbers
const numbers = [1, 2, 3, 4, 5, 6]
const evens = Iterable.filter(numbers, (x) => x % 2 === 0)
console.log(Array.from(evens)) // [2, 4, 6]

// Filter with index
const items = ["a", "b", "c", "d"]
const oddPositions = Iterable.filter(items, (_, i) => i % 2 === 1)
console.log(Array.from(oddPositions)) // ["b", "d"]

// Type refinement
const mixed: Array<string | number> = ["hello", 42, "world", 100]
const onlyStrings = Iterable.filter(
  mixed,
  (x): x is string => typeof x === "string"
)
console.log(Array.from(onlyStrings)) // ["hello", "world"] (typed as string[])

// Combine with map
const processed = Iterable.map(
  Iterable.filter([1, 2, 3, 4, 5], (x) => x > 2),
  (x) => x * 10
)
console.log(Array.from(processed)) // [30, 40, 50]
```

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Iterable<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Iterable<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Iterable<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1809)

Since v2.0.0