# between

Test whether a value is between a minimum and a maximum (inclusive).

To import and use `between` from the "Order" module:

```ts
import * as Order from '@effect/data/Order'

// Can be accessed like this
Order.between
```

**Signature**

```ts
export declare const between: <A>(O: Order<A>) => {
  (minimum: A, maximum: A): (self: A) => boolean
  (self: A, minimum: A, maximum: A): boolean
}
```
