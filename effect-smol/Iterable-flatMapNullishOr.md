Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.flatMapNullishOr

Transforms elements using a function that may return null or undefined, filtering out the null/undefined results.

This is useful when working with APIs or functions that return nullable values,
providing a clean way to filter out null/undefined while transforming.

**Example**

```ts
import { Iterable } from "effect"

// Extract valid elements from nullable function results
const data = ["1", "2", "invalid", "4"]
const parsed = Iterable.flatMapNullishOr(data, (s) => {
  const num = parseInt(s)
  return isNaN(num) ? null : num * 2
})
console.log(Array.from(parsed)) // [2, 4, 8]

// Safe property access
const objects = [
  { nested: { value: 10 } },
  { nested: null },
  { nested: { value: 20 } },
  {}
]
const values = Iterable.flatMapNullishOr(objects, (obj) => obj.nested?.value)
console.log(Array.from(values)) // [10, 20]

// Working with Map.get (returns undefined for missing keys)
const map = new Map([
  ["a", 1],
  ["b", 2],
  ["c", 3]
])
const keys = ["a", "x", "b", "y", "c"]
const foundValues = Iterable.flatMapNullishOr(keys, (key) => map.get(key))
console.log(Array.from(foundValues)) // [1, 2, 3]
```

**Signature**

```ts
declare const flatMapNullishOr: { <A, B>(f: (a: A) => B): (self: Iterable<A>) => Iterable<NonNullable<B>>; <A, B>(self: Iterable<A>, f: (a: A) => B): Iterable<NonNullable<B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1877)

Since v2.0.0