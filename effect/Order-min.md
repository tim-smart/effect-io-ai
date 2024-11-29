# min

Take the minimum of two values. If they are considered equal, the first argument is chosen.

To import and use `min` from the "Order" module:

ts
import \* as Order from "effect/Order"
// Can be accessed like this
Order.min
undefined

**Signature**

```ts
export declare const min: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A }
```
