# getOrder

The `Order` instance allows `Option` values to be compared with
`compare`, whenever there is an `Order` instance for
the type the `Option` contains.

`None` is considered to be less than any `Some` value.

To import and use `getOrder` from the "Option" module:

```ts
import * as Option from '@effect/data/Option'

// Can be accessed like this
Option.getOrder
```

**Example**

```ts
import { none, some, getOrder } from '@effect/data/Option'
import * as N from '@effect/data/Number'
import { pipe } from '@effect/data/Function'

const O = getOrder(N.Order)
assert.deepStrictEqual(O.compare(none(), none()), 0)
assert.deepStrictEqual(O.compare(none(), some(1)), -1)
assert.deepStrictEqual(O.compare(some(1), none()), 1)
assert.deepStrictEqual(O.compare(some(1), some(2)), -1)
assert.deepStrictEqual(O.compare(some(1), some(1)), 0)
```

**Signature**

```ts
export declare const getOrder: <A>(O: Order<A>) => Order<Option<A>>
```
