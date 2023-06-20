# isEmptyReadonlyArray

Determine if a `ReadonlyArray` is empty narrowing down the type to `readonly []`.

To import and use `isEmptyReadonlyArray` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.isEmptyReadonlyArray
```

**Example**

```ts
import { isEmptyReadonlyArray } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(isEmptyReadonlyArray([]), true)
assert.deepStrictEqual(isEmptyReadonlyArray([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmptyReadonlyArray: <A>(self: readonly A[]) => self is readonly []
```
