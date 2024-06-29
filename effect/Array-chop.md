# chop

A useful recursion pattern for processing an `Iterable` to produce a new `Array`, often used for "chopping" up the input
`Iterable`. Typically chop is called with some function that will consume an initial prefix of the `Iterable` and produce a
value and the rest of the `Array`.

To import and use `chop` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.chop
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3, 4, 5]
const result = Array.chop(numbers, (as): [number, Array<number>] => [as[0] * 2, as.slice(1)])
assert.deepStrictEqual(result, [2, 4, 6, 8, 10])

// Explanation:
// The `chopFunction` takes the first element of the array, doubles it, and then returns it along with the rest of the array.
// The `chop` function applies this `chopFunction` recursively to the input array `[1, 2, 3, 4, 5]`,
// resulting in a new array `[2, 4, 6, 8, 10]`.
```

**Signature**

```ts
export declare const chop: {
  <S extends Iterable<any>, B>(
    f: (
      as: readonly [ReadonlyArray.Infer<S>, ...ReadonlyArray.Infer<S>[]]
    ) => readonly [B, readonly ReadonlyArray.Infer<S>[]]
  ): (self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A, B>(self: readonly [A, ...A[]], f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): [B, ...B[]]
  <A, B>(self: Iterable<A>, f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): B[]
}
```
