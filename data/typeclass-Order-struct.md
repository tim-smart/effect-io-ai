# struct

This function creates and returns a new `Order` for a struct of values based on the given `Order`s
for each property in the struct.

To import and use `struct` from the "Order" module:

```ts
import * as Order from '@effect/data/typeclass/Order'

// Can be accessed like this
Order.struct
```

**Signature**

```ts
export declare const struct: <R extends { readonly [x: string]: Order<any> }>(
  fields: R
) => Order<{ [K in keyof R]: [R[K]] extends [Order<infer A>] ? A : never }>
```
