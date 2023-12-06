# sort

Create a new array with elements sorted in increasing order based on the specified comparator.
If the input is a `NonEmptyReadonlyArray`, the output will also be a `NonEmptyReadonlyArray`.

To import and use `sort` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.sort
```

**Signature**

```ts
export declare const sort: {
  <B>(
    O: Order.Order<B>
  ): <S extends readonly any[] | Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>
  <A extends B, B>(self: readonly [A, ...A[]], O: Order.Order<B>): [A, ...A[]]
  <A extends B, B>(self: Iterable<A>, O: Order.Order<B>): A[]
}
```
