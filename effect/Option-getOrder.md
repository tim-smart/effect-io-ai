# getOrder

The `Order` instance allows `Option` values to be compared with
`compare`, whenever there is an `Order` instance for
the type the `Option` contains.

`None` is considered to be less than any `Some` value.

To import and use `getOrder` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.getOrder
```

**Example**

```ts
import { pipe, Option, Number } from "effect"

const O = Option.getOrder(Number.Order)
assert.deepStrictEqual(O(Option.none(), Option.none()), 0)
assert.deepStrictEqual(O(Option.none(), Option.some(1)), -1)
assert.deepStrictEqual(O(Option.some(1), Option.none()), 1)
assert.deepStrictEqual(O(Option.some(1), Option.some(2)), -1)
assert.deepStrictEqual(O(Option.some(1), Option.some(1)), 0)
```

**Signature**

```ts
export declare const getOrder: <A>(O: Order<A>) => Order<Option<A>>
```
