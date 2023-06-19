# sortBy

Sort the elements of an `Iterable` in increasing order, where elements are compared
using first `orders[0]`, then `orders[1]`, etc...

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const sortBy: <B>(...orders: readonly order.Order<B>[]) => <A extends B>(self: Iterable<A>) => A[]
```
