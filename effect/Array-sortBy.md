# sortBy

Sort the elements of an `Iterable` in increasing order, where elements are compared
using first `orders[0]`, then `orders[1]`, etc...

To import and use `sortBy` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.sortBy
```

**Signature**

```ts
export declare const sortBy: <S extends readonly [any, ...any[]] | Iterable<any>>(
  ...orders: readonly Order.Order<ReadonlyArray.Infer<S>>[]
) => (self: S) => S extends readonly [infer A, ...(infer A)[]] ? [A, ...A[]] : S extends Iterable<infer A> ? A[] : never
```
