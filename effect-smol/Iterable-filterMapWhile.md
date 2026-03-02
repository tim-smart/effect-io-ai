Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.filterMapWhile

Transforms all elements of the `Iterable` for as long as the specified function succeeds.

**Example**

```ts
import { Iterable } from "effect"
import * as Result from "effect/Result"

// Parse numbers until we hit an invalid one
const strings = ["1", "2", "3", "invalid", "4", "5"]
const numbers = Iterable.filterMapWhile(strings, (s) => {
  const num = parseInt(s)
  return isNaN(num) ? Result.failVoid : Result.succeed(num)
})
console.log(Array.from(numbers)) // [1, 2, 3] (stops at "invalid")

// Take elements while they meet a condition and transform them
const values = [2, 4, 6, 7, 8, 10]
const doubledEvens = Iterable.filterMapWhile(
  values,
  (n) => n % 2 === 0 ? Result.succeed(n * 2) : Result.failVoid
)
console.log(Array.from(doubledEvens)) // [4, 8, 12] (stops at 7)

// Process with index until condition fails
const letters = ["a", "b", "c", "d", "e"]
const indexedUntilC = Iterable.filterMapWhile(
  letters,
  (letter, i) => letter !== "c" ? Result.succeed(`${i}: ${letter}`) : Result.failVoid
)
console.log(Array.from(indexedUntilC)) // ["0: a", "1: b"] (stops at "c")
```

**Signature**

```ts
declare const filterMapWhile: { <A, B, X>(f: (input: A, i: number) => Result<B, X>): (self: Iterable<A>) => Iterable<B>; <A, B, X>(self: Iterable<A>, f: (input: A, i: number) => Result<B, X>): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1614)

Since v2.0.0