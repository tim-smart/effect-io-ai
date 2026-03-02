Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.map

Transforms each element of an iterable using a function.

This is one of the most fundamental operations for working with iterables.
It applies a transformation function to each element, creating a new iterable
with the transformed values. The operation is lazy - elements are only
transformed when the iterable is consumed.

**Example**

```ts
import { Iterable } from "effect"

// Transform numbers to their squares
const numbers = [1, 2, 3, 4, 5]
const squares = Iterable.map(numbers, (x) => x * x)
console.log(Array.from(squares)) // [1, 4, 9, 16, 25]

// Use index in transformation
const indexed = Iterable.map(["a", "b", "c"], (char, i) => `${i}: ${char}`)
console.log(Array.from(indexed)) // ["0: a", "1: b", "2: c"]

// Chain transformations
const result = Iterable.map(
  Iterable.map([1, 2, 3], (x) => x * 2),
  (x) => x + 1
)
console.log(Array.from(result)) // [3, 5, 7]
```

**Signature**

```ts
declare const map: { <A, B>(f: (a: NoInfer<A>, i: number) => B): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, f: (a: NoInfer<A>, i: number) => B): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1384)

Since v2.0.0