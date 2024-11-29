# isEmptyReadonlyArray

Determine if a `ReadonlyArray` is empty narrowing down the type to `readonly []`.

To import and use `isEmptyReadonlyArray` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.isEmptyReadonlyArray
undefined

**Example**

```ts
import { isEmptyReadonlyArray } from "effect/Array"

assert.deepStrictEqual(isEmptyReadonlyArray([]), true)
assert.deepStrictEqual(isEmptyReadonlyArray([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmptyReadonlyArray: <A>(self: ReadonlyArray<A>) => self is readonly []
```
