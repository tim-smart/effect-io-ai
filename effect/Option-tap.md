# tap

Applies the provided function `f` to the value of the `Option` if it is `Some` and returns the original `Option`
unless `f` returns `None`, in which case it returns `None`.

This function is useful for performing additional computations on the value of the input `Option` without affecting its value.

To import and use `tap` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.tap
```

**Example**

```ts
import * as O from "effect/Option"

const getInteger = (n: number) => (Number.isInteger(n) ? O.some(n) : O.none())

assert.deepStrictEqual(O.tap(O.none(), getInteger), O.none())
assert.deepStrictEqual(O.tap(O.some(1), getInteger), O.some(1))
assert.deepStrictEqual(O.tap(O.some(1.14), getInteger), O.none())
```

**Signature**

```ts
export declare const tap: {
  <A, _>(f: (a: A) => Option<_>): (self: Option<A>) => Option<A>
  <A, _>(self: Option<A>, f: (a: A) => Option<_>): Option<A>
}
```
