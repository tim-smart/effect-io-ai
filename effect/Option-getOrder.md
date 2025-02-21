# getOrder

Creates an `Order` instance for comparing `Option` values, using a provided
`Order` for the inner type.

**Details**

This function produces an `Order` instance for `Option<A>`, allowing `Option`
values to be compared:

- `None` is always considered less than any `Some` value.
- If both are `Some`, their inner values are compared using the provided
  `Order` instance.

To import and use `getOrder` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrder
```

**Example**

```ts
import { Number, Option } from "effect"

const order = Option.getOrder(Number.Order)

console.log(order(Option.none(), Option.none()))
// Output: 0

console.log(order(Option.none(), Option.some(1)))
// Output: -1

console.log(order(Option.some(1), Option.none()))
// Output: 1

console.log(order(Option.some(1), Option.some(2)))
// Output: -1

console.log(order(Option.some(1), Option.some(1)))
// Output: 0
```

**Signature**

```ts
export declare const getOrder: <A>(O: Order<A>) => Order<Option<A>>
```
