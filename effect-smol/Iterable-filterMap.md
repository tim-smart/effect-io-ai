Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.filterMap

Transforms elements of an iterable using a function that returns a `Result`, keeping only successful values.

This combines mapping and filtering in a single operation - the function is applied to each element,
and only elements that result in `Result.succeed` are included in the result.

**Example**

```ts
import { Iterable } from "effect"
import * as Result from "effect/Result"

// Parse strings to numbers, keeping only valid ones
const strings = ["1", "2", "invalid", "4", "not-a-number"]
const numbers = Iterable.filterMap(strings, (s) => {
  const num = parseInt(s)
  return isNaN(num) ? Result.failVoid : Result.succeed(num)
})
console.log(Array.from(numbers)) // [1, 2, 4]

// Extract specific properties from objects
const users = [
  { name: "Alice", age: 25, email: "alice@example.com" },
  { name: "Bob", age: 17, email: undefined },
  { name: "Charlie", age: 30, email: "charlie@example.com" },
  { name: "David", age: 16, email: undefined }
]
const adultEmails = Iterable.filterMap(
  users,
  (user) =>
    user.age >= 18 && user.email ? Result.succeed(user.email) : Result.failVoid
)
console.log(Array.from(adultEmails)) // ["alice@example.com", "charlie@example.com"]

// Use index in transformation
const items = ["a", "b", "c", "d", "e"]
const evenIndexItems = Iterable.filterMap(
  items,
  (item, i) => i % 2 === 0 ? Result.succeed(`${i}: ${item}`) : Result.failVoid
)
console.log(Array.from(evenIndexItems)) // ["0: a", "2: c", "4: e"]
```

**Signature**

```ts
declare const filterMap: { <A, B, X>(f: (input: A, i: number) => Result<B, X>): (self: Iterable<A>) => Iterable<B>; <A, B, X>(self: Iterable<A>, f: (input: A, i: number) => Result<B, X>): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1552)

Since v2.0.0