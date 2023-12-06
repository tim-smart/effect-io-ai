# sortBy

Sort the elements of an `Iterable` in increasing order, where elements are compared
using first `orders[0]`, then `orders[1]`, etc...

To import and use `sortBy` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.sortBy
```

**Signature**

```ts
export declare const sortBy: <S extends Iterable<any> | readonly [any, ...any[]]>(
  ...orders: readonly Order.Order<ReadonlyArray.Infer<S>>[]
) => (self: S) => S extends readonly [infer A, ...(infer A)[]] ? [A, ...A[]] : S extends Iterable<infer A> ? A[] : never
```
