# sort

Sort the elements of an `Iterable` in increasing order, creating a new `Array`.

To import and use `sort` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.sort
```

**Signature**

```ts
export declare const sort: {
  <B>(O: order.Order<B>): <A extends B>(self: Iterable<A>) => A[]
  <A extends B, B>(self: Iterable<A>, O: order.Order<B>): A[]
}
```