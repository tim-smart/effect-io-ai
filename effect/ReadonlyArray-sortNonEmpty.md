# sortNonEmpty

Sort the elements of a `NonEmptyReadonlyArray` in increasing order, creating a new `NonEmptyArray`.

To import and use `sortNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.sortNonEmpty
```

**Signature**

```ts
export declare const sortNonEmpty: {
  <B>(O: Order.Order<B>): <A extends B>(self: readonly [A, ...A[]]) => [A, ...A[]]
  <A extends B, B>(self: readonly [A, ...A[]], O: Order.Order<B>): [A, ...A[]]
}
```
