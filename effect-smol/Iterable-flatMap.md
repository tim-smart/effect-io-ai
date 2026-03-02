Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.flatMap

Applies a function to each element in an Iterable and returns a new Iterable containing the concatenated mapped elements.

**Example**

```ts
import { Iterable } from "effect"

// Expand each number to a range
const numbers = [1, 2, 3]
const expanded = Iterable.flatMap(numbers, (n) => Iterable.range(1, n))
console.log(Array.from(expanded)) // [1, 1, 2, 1, 2, 3]

// Split strings into characters
const words = ["hi", "bye"]
const chars = Iterable.flatMap(words, (word) => word)
console.log(Array.from(chars)) // ["h", "i", "b", "y", "e"]

// Conditional expansion with empty iterables
const values = [1, 2, 3, 4, 5]
const evenMultiples = Iterable.flatMap(
  values,
  (n) => n % 2 === 0 ? [n, n * 2, n * 3] : []
)
console.log(Array.from(evenMultiples)) // [2, 4, 6, 4, 8, 12]

// Use index in transformation
const letters = ["a", "b", "c"]
const indexed = Iterable.flatMap(
  letters,
  (letter, i) => Iterable.replicate(letter, i + 1)
)
console.log(Array.from(indexed)) // ["a", "b", "b", "c", "c", "c"]
```

**Signature**

```ts
declare const flatMap: { <A, B>(f: (a: NoInfer<A>, i: number) => Iterable<B>): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, f: (a: NoInfer<A>, i: number) => Iterable<B>): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1443)

Since v2.0.0