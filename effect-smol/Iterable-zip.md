Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.zip

Takes two `Iterable`s and returns an `Iterable` of corresponding pairs.

**Example**

```ts
import { Iterable } from "effect"

const numbers = [1, 2, 3]
const letters = ["a", "b", "c"]
const zipped = Iterable.zip(numbers, letters)
console.log(Array.from(zipped)) // [[1, "a"], [2, "b"], [3, "c"]]

// Different lengths - shorter one determines result length
const short = [1, 2]
const long = ["a", "b", "c", "d"]
const partial = Iterable.zip(short, long)
console.log(Array.from(partial)) // [[1, "a"], [2, "b"]]

// Works with any iterables
const range = Iterable.range(1, 3)
const word = "abc"
const mixed = Iterable.zip(range, word)
console.log(Array.from(mixed)) // [[1, "a"], [2, "b"], [3, "c"]]

// Create indexed pairs
const values = ["apple", "banana", "cherry"]
const indices = Iterable.range(0, 2)
const indexed = Iterable.zip(indices, values)
console.log(Array.from(indexed)) // [[0, "apple"], [1, "banana"], [2, "cherry"]]
```

**Signature**

```ts
declare const zip: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<[A, B]>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L807)

Since v2.0.0