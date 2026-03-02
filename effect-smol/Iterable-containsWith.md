Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.containsWith

Returns a function that checks if an `Iterable` contains a given value using a provided `isEquivalent` function.

**Example**

```ts
import { Iterable } from "effect"

// Custom equivalence for objects
const byId = (a: { id: number }, b: { id: number }) => a.id === b.id
const containsById = Iterable.containsWith(byId)

const users = [{ id: 1 }, { id: 2 }]
const hasUser1 = containsById(users, { id: 1 })
console.log(hasUser1) // true (same id)

// Case-insensitive string comparison
const caseInsensitive = (a: string, b: string) =>
  a.toLowerCase() === b.toLowerCase()
const containsCaseInsensitive = Iterable.containsWith(caseInsensitive)

const words = ["Hello", "World"]
const hasHello = containsCaseInsensitive(words, "hello")
console.log(hasHello) // true

// Approximate number comparison
const approxEqual = (a: number, b: number) => Math.abs(a - b) < 0.1
const containsApprox = Iterable.containsWith(approxEqual)

const values = [1.0, 2.0, 3.0]
const hasAlmostTwo = containsApprox(values, 2.05)
console.log(hasAlmostTwo) // true
```

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Iterable<A>) => boolean; (self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L978)

Since v2.0.0