Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.some

Check if a predicate holds true for some `Iterable` element.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 3, 5, 7, 8]
const hasEven = Iterable.some(numbers, (x) => x % 2 === 0)
console.log(hasEven) // true (because of 8)

const allOdd = [1, 3, 5, 7]
const hasEvenInAllOdd = Iterable.some(allOdd, (x) => x % 2 === 0)
console.log(hasEvenInAllOdd) // false

// With index
const letters = ["a", "b", "c"]
const hasElementAtIndex2 = Iterable.some(letters, (_, i) => i === 2)
console.log(hasElementAtIndex2) // true

// Early termination - stops at first match
const infiniteOdds = Iterable.filter(Iterable.range(1), (x) => x % 2 === 1)
const hasEvenInInfiniteOdds = Iterable.some(
  Iterable.take(infiniteOdds, 1000),
  (x) => x % 2 === 0
)
console.log(hasEvenInInfiniteOdds) // false (quickly, doesn't check all 1000)

// Type guard usage
const mixed: Array<string | number> = [1, 2, "hello"]
const hasString = Iterable.some(
  mixed,
  (x): x is string => typeof x === "string"
)
console.log(hasString) // true
```

**Signature**

```ts
declare const some: { <A>(predicate: (a: A, i: number) => boolean): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1929)

Since v2.0.0