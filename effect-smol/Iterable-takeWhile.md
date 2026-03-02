Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.takeWhile

Calculate the longest initial Iterable for which all element satisfy the specified predicate, creating a new `Iterable`.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [2, 4, 6, 8, 3, 10, 12]
const evenPrefix = Iterable.takeWhile(numbers, (x) => x % 2 === 0)
console.log(Array.from(evenPrefix)) // [2, 4, 6, 8]

// With index
const letters = ["a", "b", "c", "d", "e"]
const firstThreeByIndex = Iterable.takeWhile(letters, (_, i) => i < 3)
console.log(Array.from(firstThreeByIndex)) // ["a", "b", "c"]

// Stops at first non-matching element
const mixed = [1, 3, 5, 4, 7, 9]
const oddPrefix = Iterable.takeWhile(mixed, (x) => x % 2 === 1)
console.log(Array.from(oddPrefix)) // [1, 3, 5]

// Type refinement
const values: Array<string | number> = ["a", "b", "c", 1, "d"]
const stringPrefix = Iterable.takeWhile(
  values,
  (x): x is string => typeof x === "string"
)
console.log(Array.from(stringPrefix)) // ["a", "b", "c"] (typed as string[])
```

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Iterable<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Iterable<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Iterable<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L573)

Since v2.0.0