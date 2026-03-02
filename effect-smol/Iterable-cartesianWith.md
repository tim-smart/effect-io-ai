Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.cartesianWith

Zips this Iterable crosswise with the specified Iterable using the specified combiner.

**Example**

```ts
import { Iterable } from "effect"

// Create coordinate pairs
const xs = [1, 2]
const ys = ["a", "b", "c"]
const coordinates = Iterable.cartesianWith(xs, ys, (x, y) => `(${x},${y})`)
console.log(Array.from(coordinates)) // ["(1,a)", "(1,b)", "(1,c)", "(2,a)", "(2,b)", "(2,c)"]

// Generate all combinations of options
const sizes = ["S", "M", "L"]
const colors = ["red", "blue"]
const products = Iterable.cartesianWith(
  sizes,
  colors,
  (size, color) => ({ size, color })
)
console.log(Array.from(products))
// [
//   { size: "S", color: "red" }, { size: "S", color: "blue" },
//   { size: "M", color: "red" }, { size: "M", color: "blue" },
//   { size: "L", color: "red" }, { size: "L", color: "blue" }
// ]

// Mathematical operations on all pairs
const a = [1, 2, 3]
const b = [10, 20]
const mathProducts = Iterable.cartesianWith(a, b, (x, y) => x * y)
console.log(Array.from(mathProducts)) // [10, 20, 20, 40, 30, 60]

// Create test data combinations
const userTypes = ["admin", "user"]
const features = ["read", "write", "delete"]
const testCases = Iterable.cartesianWith(
  userTypes,
  features,
  (user, feature) => `${user}_can_${feature}`
)
console.log(Array.from(testCases))
// ["admin_can_read", "admin_can_write", "admin_can_delete", "user_can_read", "user_can_write", "user_can_delete"]
```

**Signature**

```ts
declare const cartesianWith: { <A, B, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Iterable<C>; <A, B, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Iterable<C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L2268)

Since v2.0.0