Package: `effect`<br />
Module: `Array`<br />

## Array.partitionMap

Applies a function to each element of the `Iterable`, categorizing the results into two separate arrays.
This function is particularly useful for operations where each element can result in two possible types,
and you want to separate these types into different collections. For instance, separating validation results
into successes and failures.

**Example**

```ts
import { Array, Either } from "effect";

const isEven = (x: number) => x % 2 === 0

const result = Array.partitionMap([1, 2, 3, 4, 5], x =>
  isEven(x) ? Either.right(x) : Either.left(x)
)
console.log(result)
// [
//   [1, 3, 5],
//   [2, 4]
// ]
```

**Signature**

```ts
declare const partitionMap: { <A, B, C>(f: (a: A, i: number) => Either.Either<C, B>): (self: Iterable<A>) => [left: Array<B>, right: Array<C>]; <A, B, C>(self: Iterable<A>, f: (a: A, i: number) => Either.Either<C, B>): [left: Array<B>, right: Array<C>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2655)

Since v2.0.0