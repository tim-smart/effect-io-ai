Package: `effect`<br />
Module: `Array`<br />

## Array.filterMap

Applies a function to each element of the `Iterable` and filters based on the result, keeping the transformed values where the function returns `Some`.
This method combines filtering and mapping functionalities, allowing transformations and filtering of elements based on a single function pass.

**Example**

```ts
import { Array, Option } from "effect"

const evenSquares = (x: number) => x % 2 === 0 ? Option.some(x * x) : Option.none()

const result = Array.filterMap([1, 2, 3, 4, 5], evenSquares);
console.log(result) // [4, 16]
```

**Signature**

```ts
declare const filterMap: { <A, B>(f: (a: A, i: number) => Option.Option<B>): (self: Iterable<A>) => Array<B>; <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option.Option<B>): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2574)

Since v2.0.0