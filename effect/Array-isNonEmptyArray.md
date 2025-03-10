# isNonEmptyArray

Determine if an `Array` is non empty narrowing down the type to `NonEmptyArray`.

An `Array` is considered to be a `NonEmptyArray` if it contains at least one element.

To import and use `isNonEmptyArray` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.isNonEmptyArray
```

**Example**

```ts
import { isNonEmptyArray } from "effect/Array"

assert.deepStrictEqual(isNonEmptyArray([]), false)
assert.deepStrictEqual(isNonEmptyArray([1, 2, 3]), true)
```

**Signature**

```ts
export declare const isNonEmptyArray: <A>(self: Array<A>) => self is NonEmptyArray<A>
```
