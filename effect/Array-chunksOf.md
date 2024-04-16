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
