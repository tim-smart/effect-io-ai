# filterMap

Maps over the value of an `Option` and filters out `None`s.

Useful when in addition to filtering you also want to change the type of the `Option`.

To import and use `filterMap` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.filterMap
```

**Example**

```ts
import * as O from "effect/Option"

const evenNumber = (n: number) => (n % 2 === 0 ? O.some(n) : O.none())

assert.deepStrictEqual(O.filterMap(O.none(), evenNumber), O.none())
assert.deepStrictEqual(O.filterMap(O.some(3), evenNumber), O.none())
assert.deepStrictEqual(O.filterMap(O.some(2), evenNumber), O.some(2))
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>
}
```
