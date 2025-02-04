# tap

Applies the provided function `f` to the value of the `Option` if it is
`Some` and returns the original `Option`, unless `f` returns `None`, in which
case it returns `None`.

**Details**

This function allows you to perform additional computations on the value of
an `Option` without modifying its original value. If the `Option` is `Some`,
the provided function `f` is executed with the value, and its result
determines whether the original `Option` is returned (`Some`) or the result
is `None` if `f` returns `None`. If the input `Option` is `None`, the
function is not executed, and `None` is returned.

This is particularly useful for applying side conditions or performing
validation checks while retaining the original `Option`'s value.

To import and use `tap` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.tap
```

**Example**

```ts
import { Option } from "effect"

const getInteger = (n: number) => (Number.isInteger(n) ? Option.some(n) : Option.none())

console.log(Option.tap(Option.none(), getInteger))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.tap(Option.some(1), getInteger))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }

console.log(Option.tap(Option.some(1.14), getInteger))
// Output: { _id: 'Option', _tag: 'None' }
```

**Signature**

```ts
export declare const tap: {
  <A, X>(f: (a: A) => Option<X>): (self: Option<A>) => Option<A>
  <A, X>(self: Option<A>, f: (a: A) => Option<X>): Option<A>
}
```
