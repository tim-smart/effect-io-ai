# sort

Sort the elements of an `Iterable` in increasing order, creating a new `Array`.

To import and use `sort` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.sort
```

**Signature**

```ts
export declare const sort: {
  <B>(O: Order.Order<B>): <A extends B>(self: Iterable<A>) => A[]
  <A extends B, B>(self: Iterable<A>, O: Order.Order<B>): A[]
}
```
