# isNonEmptyReadonlyArray

Determine if a `ReadonlyArray` is non empty narrowing down the type to `NonEmptyReadonlyArray`.

A `ReadonlyArray` is considered to be a `NonEmptyReadonlyArray` if it contains at least one element.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { isNonEmptyReadonlyArray } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(isNonEmptyReadonlyArray([]), false)
assert.deepStrictEqual(isNonEmptyReadonlyArray([1, 2, 3]), true)
```

**Signature**

```ts
export declare const isNonEmptyReadonlyArray: <A>(self: readonly A[]) => self is readonly [A, ...A[]]
```
