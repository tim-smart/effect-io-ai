Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.appendAll

Concatenates two iterables, combining their elements.

**Example**

```ts
import { Iterable } from "effect"

const first = [1, 2, 3]
const second = [4, 5, 6]
const combined = Iterable.appendAll(first, second)
console.log(Array.from(combined)) // [1, 2, 3, 4, 5, 6]

// Works with different iterable types
const numbers = [1, 2]
const letters = "abc"
const mixed = Iterable.appendAll(numbers, letters)
console.log(Array.from(mixed)) // [1, 2, "a", "b", "c"]

// Lazy evaluation - only consumes what's needed
const infinite = Iterable.range(1)
const finite = [0, -1, -2]
const result = Iterable.take(Iterable.appendAll(finite, infinite), 5)
console.log(Array.from(result)) // [0, -1, -2, 1, 2]
```

**Signature**

```ts
declare const appendAll: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L289)

Since v2.0.0