Package: `effect`<br />
Module: `Array`<br />

## Array.filterMapWhile

Applies a function to each element of the array and filters based on the result, stopping when a condition is not met.
This method combines filtering and mapping in a single pass, and short-circuits, i.e., stops processing, as soon as the function returns `None`.
This is useful when you need to transform an array but only up to the point where a certain condition holds true.

**Example**

```ts
import { Array, Option } from "effect"

const toSquareTillOdd = (x: number) => x % 2 === 0 ? Option.some(x * x) : Option.none()

const result = Array.filterMapWhile([2, 4, 5], toSquareTillOdd)
console.log(result) // [4, 16]
```

**Signature**

```ts
declare const filterMapWhile: { <A, B>(f: (a: A, i: number) => Option.Option<B>): (self: Iterable<A>) => Array<B>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option.Option<B>): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2553)

Since v2.0.0