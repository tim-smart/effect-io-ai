# greaterThanOrEqualTo

Test whether one value is _non-strictly greater than_ another.

To import and use `greaterThanOrEqualTo` from the "Order" module:

ts
import \* as Order from "effect/Order"
// Can be accessed like this
Order.greaterThanOrEqualTo
undefined

**Signature**

```ts
export declare const greaterThanOrEqualTo: <A>(O: Order<A>) => {
  (that: A): (self: A) => boolean
  (self: A, that: A): boolean
}
```
