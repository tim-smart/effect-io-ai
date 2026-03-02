Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.forEach

Iterate over the `Iterable` applying `f`.

**Example**

```ts
import { Iterable } from "effect"

// Print each element
const numbers = [1, 2, 3, 4, 5]
Iterable.forEach(numbers, (n) => console.log(n))
// Prints: 1, 2, 3, 4, 5

// Use index in the callback
const letters = ["a", "b", "c"]
Iterable.forEach(letters, (letter, i) => {
  console.log(`${i}: ${letter}`)
})
// Prints: "0: a", "1: b", "2: c"

// Side effects with any iterable
const results: Array<number> = []
Iterable.forEach(Iterable.range(1, 5), (n) => {
  results.push(n * n)
})
console.log(results) // [1, 4, 9, 16, 25]

// Process in chunks
const data = Iterable.chunksOf([1, 2, 3, 4, 5, 6], 2)
Iterable.forEach(data, (chunk) => {
  console.log(`Processing chunk: ${Array.from(chunk)}`)
})
// Prints: "Processing chunk: 1,2", "Processing chunk: 3,4", "Processing chunk: 5,6"
```

**Signature**

```ts
declare const forEach: { <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void; <A>(self: Iterable<A>, f: (a: A, i: number) => void): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L2036)

Since v2.0.0