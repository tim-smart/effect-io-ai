Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.contains

Returns a function that checks if a `Iterable` contains a given value using the default `Equivalence`.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3, 4, 5]
console.log(Iterable.contains(numbers, 3)) // true
console.log(Iterable.contains(numbers, 6)) // false

const letters = "hello"
console.log(Iterable.contains(letters, "l")) // true
console.log(Iterable.contains(letters, "x")) // false

// Works with any iterable
const range = Iterable.range(1, 100)
console.log(Iterable.contains(range, 50)) // true
console.log(Iterable.contains(range, 150)) // false

// Curried version
const containsThree = Iterable.contains(3)
console.log(containsThree([1, 2, 3])) // true
console.log(containsThree([4, 5, 6])) // false
```

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1021)

Since v2.0.0