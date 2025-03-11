## takeWhile

Calculate the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

**Example**

```ts
import { Array } from "effect"

const result = Array.takeWhile([1, 3, 2, 4, 1, 2], x => x < 4)
console.log(result) // [1, 3, 2]

// Explanation:
// - The function starts with the first element (`1`), which is less than `4`, so it adds `1` to the result.
// - The next element (`3`) is also less than `4`, so it adds `3`.
// - The next element (`2`) is again less than `4`, so it adds `2`.
// - The function then encounters `4`, which is not less than `4`. At this point, it stops checking further elements and finalizes the result.
```

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Array<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Array<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Array<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L855)

Since v2.0.0