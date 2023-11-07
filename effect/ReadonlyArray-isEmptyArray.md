# isEmptyArray

Determine if an `Array` is empty narrowing down the type to `[]`.

To import and use `isEmptyArray` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.isEmptyArray
```

**Example**

```ts
import { isEmptyArray } from 'effect/ReadonlyArray'

assert.deepStrictEqual(isEmptyArray([]), true)
assert.deepStrictEqual(isEmptyArray([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmptyArray: <A>(self: A[]) => self is []
```
