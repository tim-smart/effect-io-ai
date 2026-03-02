Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.reduce

Reduce an iterable to a single value by applying a function to each element and accumulating the result.

This function applies a reducing function against an accumulator and each element
of the iterable (from left to right) to reduce it to a single value.

**Example**

```ts
import { Iterable } from "effect"

// Sum all numbers
const numbers = [1, 2, 3, 4, 5]
const sum = Iterable.reduce(numbers, 0, (acc, n) => acc + n)
console.log(sum) // 15

// Find maximum value
const values = [3, 1, 4, 1, 5, 9, 2]
const max = Iterable.reduce(values, -Infinity, Math.max)
console.log(max) // 9

// Build an object from key-value pairs
const pairs = [["a", 1], ["b", 2], ["c", 3]] as const
const obj = Iterable.reduce(
  pairs,
  {} as Record<string, number>,
  (acc, [key, value]) => {
    acc[key] = value
    return acc
  }
)
console.log(obj) // { a: 1, b: 2, c: 3 }

// Use index in the reducer
const letters = ["a", "b", "c"]
const indexed = Iterable.reduce(
  letters,
  [] as Array<string>,
  (acc, letter, i) => {
    acc.push(`${i}: ${letter}`)
    return acc
  }
)
console.log(indexed) // ["0: a", "1: b", "2: c"]
```

**Signature**

```ts
declare const reduce: { <B, A>(b: B, f: (b: B, a: A, i: number) => B): (self: Iterable<A>) => B; <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A, i: number) => B): B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L2095)

Since v2.0.0