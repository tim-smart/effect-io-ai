# chunksOf

Splits an `Iterable` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `Iterable`. Note that `chunksOf(n)([])` is `[]`, not `[[]]`. This is intentional, and is consistent with a recursive
definition of `chunksOf`; it satisfies the property that

```ts
chunksOf(n)(xs).concat(chunksOf(n)(ys)) == chunksOf(n)(xs.concat(ys)))
```

whenever `n` evenly divides the length of `self`.

To import and use `chunksOf` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.chunksOf
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.chunksOf(numbers, 2)
assert.deepStrictEqual(result, [[1, 2], [3, 4], [5]])

// Explanation:
// The `chunksOf` function takes an array of numbers `[1, 2, 3, 4, 5]` and a number `2`.
// It splits the array into chunks of length 2. Since the array length is not evenly divisible by 2,
// the last chunk contains the remaining elements.
// The result is `[[1, 2], [3, 4], [5]]`.
```

**Signature**

```ts
export declare const chunksOf: {
  (
    n: number
  ): <S extends readonly any[] | Iterable<any>>(
    self: S
  ) => ReadonlyArray.With<S, [ReadonlyArray.Infer<S>, ...ReadonlyArray.Infer<S>[]]>
  <A>(self: readonly [A, ...A[]], n: number): [[A, ...A[]], ...[A, ...A[]][]]
  <A>(self: Iterable<A>, n: number): [A, ...A[]][]
}
```
