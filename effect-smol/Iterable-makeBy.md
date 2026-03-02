Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.makeBy

Creates an iterable by applying a function to consecutive integers.

This is a fundamental constructor that generates iterables by calling a function
with each index starting from 0. If no length is specified, the iterable will
be infinite. This is useful for generating sequences, patterns, or any indexed data.

**Example**

```ts
import { Iterable } from "effect"

// Generate first 5 even numbers
const evens = Iterable.makeBy((n) => n * 2, { length: 5 })
console.log(Array.from(evens)) // [0, 2, 4, 6, 8]

// Generate squares
const squares = Iterable.makeBy((n) => n * n, { length: 4 })
console.log(Array.from(squares)) // [0, 1, 4, 9]

// Infinite sequence (be careful when consuming!)
const naturals = Iterable.makeBy((n) => n)
const first10 = Iterable.take(naturals, 10)
console.log(Array.from(first10)) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

**Signature**

```ts
declare const makeBy: <A>(f: (i: number) => A, options?: { readonly length?: number; }) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L76)

Since v2.0.0