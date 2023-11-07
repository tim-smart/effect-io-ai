# clamp

Clamp a value between a minimum and a maximum.

To import and use `clamp` from the "Order" module:

```ts
import * as Order from 'effect/Order'

// Can be accessed like this
Order.clamp
```

**Signature**

```ts
export declare const clamp: <A>(O: Order<A>) => {
  (minimum: A, maximum: A): (self: A) => A
  (self: A, minimum: A, maximum: A): A
}
```
