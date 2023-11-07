# lessThan

Test whether one value is _strictly less than_ another.

To import and use `lessThan` from the "Order" module:

```ts
import * as Order from 'effect/Order'

// Can be accessed like this
Order.lessThan
```

**Signature**

```ts
export declare const lessThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean }
```
