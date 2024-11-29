# isNonEmptyReadonlyArray

Determine if a `ReadonlyArray` is non empty narrowing down the type to `NonEmptyReadonlyArray`.

A `ReadonlyArray` is considered to be a `NonEmptyReadonlyArray` if it contains at least one element.

To import and use `isNonEmptyReadonlyArray` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.isNonEmptyReadonlyArray
undefined

**Example**

```ts
import { isNonEmptyReadonlyArray } from "effect/Array"

assert.deepStrictEqual(isNonEmptyReadonlyArray([]), false)
assert.deepStrictEqual(isNonEmptyReadonlyArray([1, 2, 3]), true)
```

**Signature**

```ts
export declare const isNonEmptyReadonlyArray: <A>(self: ReadonlyArray<A>) => self is NonEmptyReadonlyArray<A>
```
