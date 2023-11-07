# chunksOf

Splits an `Iterable` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `Iterable`. Note that `chunksOf(n)([])` is `[]`, not `[[]]`. This is intentional, and is consistent with a recursive
definition of `chunksOf`; it satisfies the property that

```ts
chunksOf(n)(xs).concat(chunksOf(n)(ys)) == chunksOf(n)(xs.concat(ys)))
```

whenever `n` evenly divides the length of `self`.

To import and use `chunksOf` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.chunksOf
```

**Signature**

```ts
export declare const chunksOf: {
  (n: number): <A>(self: Iterable<A>) => [A, ...A[]][]
  <A>(self: Iterable<A>, n: number): [A, ...A[]][]
}
```
