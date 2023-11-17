# chunksOfNonEmpty

Splits a `NonEmptyReadonlyArray` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `NonEmptyReadonlyArray`.

To import and use `chunksOfNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.chunksOfNonEmpty
```

**Signature**

```ts
export declare const chunksOfNonEmpty: {
  (n: number): <A>(self: readonly [A, ...A[]]) => [[A, ...A[]], ...[A, ...A[]][]]
  <A>(self: readonly [A, ...A[]], n: number): [[A, ...A[]], ...[A, ...A[]][]]
}
```
