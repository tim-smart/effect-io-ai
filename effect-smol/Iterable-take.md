Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.take

Keep only a max number of elements from the start of an `Iterable`, creating a new `Iterable`.

**Note**. `n` is normalized to a non negative integer.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3, 4, 5]
const firstThree = Iterable.take(numbers, 3)
console.log(Array.from(firstThree)) // [1, 2, 3]

// Taking more than available returns all elements
const firstTen = Iterable.take(numbers, 10)
console.log(Array.from(firstTen)) // [1, 2, 3, 4, 5]

// Taking 0 or negative returns empty
const none = Iterable.take(numbers, 0)
console.log(Array.from(none)) // []

// Useful with infinite iterables
const naturals = Iterable.range(1)
const firstFive = Iterable.take(naturals, 5)
console.log(Array.from(firstFive)) // [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const take: { (n: number): <A>(self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L520)

Since v2.0.0