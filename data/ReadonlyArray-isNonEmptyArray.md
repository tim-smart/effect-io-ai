# isNonEmptyArray

Determine if an `Array` is non empty narrowing down the type to `NonEmptyArray`.

An `Array` is considered to be a `NonEmptyArray` if it contains at least one element.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { isNonEmptyArray } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(isNonEmptyArray([]), false)
assert.deepStrictEqual(isNonEmptyArray([1, 2, 3]), true)
```

**Signature**

```ts
export declare const isNonEmptyArray: <A>(self: A[]) => self is [A, ...A[]]
```
