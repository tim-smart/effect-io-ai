# clamp

Clamp a value between a minimum and a maximum.

To import and use `clamp` from the "Order" module:

```ts
import * as Order from "effect/Order"
// Can be accessed like this
Order.clamp
```

**Example**

```ts
import { Order, Number } from "effect"

const clamp = Order.clamp(Number.Order)({ minimum: 1, maximum: 5 })

assert.equal(clamp(3), 3)
assert.equal(clamp(0), 1)
assert.equal(clamp(6), 5)
```

**Signature**

```ts
export declare const clamp: <A>(O: Order<A>) => {
  (options: { minimum: A; maximum: A }): (self: A) => A
  (self: A, options: { minimum: A; maximum: A }): A
}
```
