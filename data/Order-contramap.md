# contramap

Use `mapInput` instead.

To import and use `contramap` from the "Order" module:

```ts
import * as Order from '@effect/data/Order'

// Can be accessed like this
Order.contramap
```

**Signature**

```ts
export declare const contramap: {
  <B, A>(f: (b: B) => A): (self: Order<A>) => Order<B>
  <A, B>(self: Order<A>, f: (b: B) => A): Order<B>
}
```
