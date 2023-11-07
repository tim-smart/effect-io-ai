# max

Take the maximum of two values. If they are considered equal, the first argument is chosen.

To import and use `max` from the "Order" module:

```ts
import * as Order from 'effect/Order'

// Can be accessed like this
Order.max
```

**Signature**

```ts
export declare const max: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A }
```
