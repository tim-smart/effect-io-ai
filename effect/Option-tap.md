# tap

Applies the provided function `f` to the value of the `Option` if it is `Some` and returns the original `Option`
unless `f` returns `None`, in which case it returns `None`.

This function is useful for performing additional computations on the value of the input `Option` without affecting its value.

To import and use `tap` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.tap
undefined

**Example**

```ts
import { Option } from "effect"

const getInteger = (n: number) => (Number.isInteger(n) ? Option.some(n) : Option.none())

assert.deepStrictEqual(Option.tap(Option.none(), getInteger), Option.none())
assert.deepStrictEqual(Option.tap(Option.some(1), getInteger), Option.some(1))
assert.deepStrictEqual(Option.tap(Option.some(1.14), getInteger), Option.none())
```

**Signature**

```ts
export declare const tap: {
  <A, X>(f: (a: A) => Option<X>): (self: Option<A>) => Option<A>
  <A, X>(self: Option<A>, f: (a: A) => Option<X>): Option<A>
}
```
