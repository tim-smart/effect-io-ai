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
import { Option } from "effect"

const evenNumber = (n: number) => (n % 2 === 0 ? Option.some(n) : Option.none())

assert.deepStrictEqual(Option.filterMap(Option.none(), evenNumber), Option.none())
assert.deepStrictEqual(Option.filterMap(Option.some(3), evenNumber), Option.none())
assert.deepStrictEqual(Option.filterMap(Option.some(2), evenNumber), Option.some(2))
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>
}
```
