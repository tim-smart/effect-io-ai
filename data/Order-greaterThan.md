# greaterThan

Test whether one value is _strictly greater than_ another.

To import and use `greaterThan` from the "Order" module:

```ts
import * as Order from '@effect/data/Order'

// Can be accessed like this
Order.greaterThan
```

**Signature**

```ts
export declare const greaterThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean }
```
