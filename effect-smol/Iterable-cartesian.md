Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.cartesian

Zips this Iterable crosswise with the specified Iterable.

**Example**

```ts
import { Iterable } from "effect"

// All pairs of numbers and letters
const numbers = [1, 2, 3]
const letters = ["a", "b"]
const pairs = Iterable.cartesian(numbers, letters)
console.log(Array.from(pairs))
// [[1, "a"], [1, "b"], [2, "a"], [2, "b"], [3, "a"], [3, "b"]]

// Generate coordinate grid
const x = [0, 1, 2]
const y = [0, 1]
const grid = Iterable.cartesian(x, y)
console.log(Array.from(grid))
// [[0, 0], [0, 1], [1, 0], [1, 1], [2, 0], [2, 1]]

// All combinations for testing
const browsers = ["chrome", "firefox"]
const devices = ["desktop", "mobile", "tablet"]
const testMatrix = Iterable.cartesian(browsers, devices)
console.log(Array.from(testMatrix))
// [
//   ["chrome", "desktop"], ["chrome", "mobile"], ["chrome", "tablet"],
//   ["firefox", "desktop"], ["firefox", "mobile"], ["firefox", "tablet"]
// ]

// Empty iterable results in empty cartesian product
const empty = Iterable.empty<number>()
const withEmpty = Iterable.cartesian([1, 2], empty)
console.log(Array.from(withEmpty)) // []
```

**Signature**

```ts
declare const cartesian: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<[A, B]>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L2316)

Since v2.0.0