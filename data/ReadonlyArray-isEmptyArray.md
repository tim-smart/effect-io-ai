# isEmptyArray

Determine if an `Array` is empty narrowing down the type to `[]`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Example**

```ts
import { isEmptyArray } from '@effect/data/ReadonlyArray'

assert.deepStrictEqual(isEmptyArray([]), true)
assert.deepStrictEqual(isEmptyArray([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmptyArray: <A>(self: A[]) => self is []
```
