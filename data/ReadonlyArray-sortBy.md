# sortBy

Sort the elements of an `Iterable` in increasing order, where elements are compared
using first `orders[0]`, then `orders[1]`, etc...

To import and use `sortBy` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.sortBy
```

**Signature**

```ts
export declare const sortBy: <B>(...orders: readonly order.Order<B>[]) => <A extends B>(self: Iterable<A>) => A[]
```
