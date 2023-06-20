# lessThanOrEqualTo

Test whether one value is _non-strictly less than_ another.

To import and use `lessThanOrEqualTo` from the "Order" module:

```ts
import * as Order from '@effect/data/typeclass/Order'

// Can be accessed like this
Order.lessThanOrEqualTo
```

**Signature**

```ts
export declare const lessThanOrEqualTo: <A>(O: Order<A>) => {
  (that: A): (self: A) => boolean
  (self: A, that: A): boolean
}
```
