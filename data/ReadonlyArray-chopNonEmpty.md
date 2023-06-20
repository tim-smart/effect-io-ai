# chopNonEmpty

A useful recursion pattern for processing a `NonEmptyReadonlyArray` to produce a new `NonEmptyReadonlyArray`, often used for "chopping" up the input
`NonEmptyReadonlyArray`. Typically `chop` is called with some function that will consume an initial prefix of the `NonEmptyReadonlyArray` and produce a
value and the tail of the `NonEmptyReadonlyArray`.

To import and use `chopNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.chopNonEmpty
```

**Signature**

```ts
export declare const chopNonEmpty: {
  <A, B>(f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): (self: readonly [A, ...A[]]) => [B, ...B[]]
  <A, B>(self: readonly [A, ...A[]], f: (as: readonly [A, ...A[]]) => readonly [B, readonly A[]]): [B, ...B[]]
}
```
