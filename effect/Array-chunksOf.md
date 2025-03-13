Package: `effect`<br />
Module: `Array`<br />

## Array.chunksOf

Splits an `Iterable` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `Iterable`. Note that `chunksOf(n)([])` is `[]`, not `[[]]`. This is intentional, and is consistent with a recursive
definition of `chunksOf`; it satisfies the property that

```ts
chunksOf(n)(xs).concat(chunksOf(n)(ys)) == chunksOf(n)(xs.concat(ys)))
```

whenever `n` evenly divides the length of `self`.

**Example**

```ts
import { Array } from "effect"

const result = Array.chunksOf([1, 2, 3, 4, 5], 2)
console.log(result) // [[1, 2], [3, 4], [5]]

// Explanation:
// The `chunksOf` function takes an array of numbers `[1, 2, 3, 4, 5]` and a number `2`.
// It splits the array into chunks of length 2. Since the array length is not evenly divisible by 2,
// the last chunk contains the remaining elements.
// The result is `[[1, 2], [3, 4], [5]]`.
```

**Signature**

```ts
declare const chunksOf: { (n: number): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, NonEmptyArray<ReadonlyArray.Infer<S>>>; <A>(self: NonEmptyReadonlyArray<A>, n: number): NonEmptyArray<NonEmptyArray<A>>; <A>(self: Iterable<A>, n: number): Array<NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1979)

Since v2.0.0