# isNonEmptyReadonlyArray

Determine if a `ReadonlyArray` is non empty narrowing down the type to `NonEmptyReadonlyArray`.

A `ReadonlyArray` is considered to be a `NonEmptyReadonlyArray` if it contains at least one element.

To import and use `isNonEmptyReadonlyArray` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.isNonEmptyReadonlyArray
```

**Example**

```ts
import { isNonEmptyReadonlyArray } from 'effect/ReadonlyArray'

assert.deepStrictEqual(isNonEmptyReadonlyArray([]), false)
assert.deepStrictEqual(isNonEmptyReadonlyArray([1, 2, 3]), true)
```

**Signature**

```ts
export declare const isNonEmptyReadonlyArray: <A>(self: readonly A[]) => self is readonly [A, ...A[]]
```
