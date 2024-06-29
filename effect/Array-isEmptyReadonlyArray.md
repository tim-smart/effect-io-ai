# isEmptyReadonlyArray

Determine if a `ReadonlyArray` is empty narrowing down the type to `readonly []`.

To import and use `isEmptyReadonlyArray` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.isEmptyReadonlyArray
```

**Example**

```ts
import { isEmptyReadonlyArray } from "effect/Array"

assert.deepStrictEqual(isEmptyReadonlyArray([]), true)
assert.deepStrictEqual(isEmptyReadonlyArray([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmptyReadonlyArray: <A>(self: readonly A[]) => self is readonly []
```
