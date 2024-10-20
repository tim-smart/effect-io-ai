# isEmptyArray

Determine if an `Array` is empty narrowing down the type to `[]`.

To import and use `isEmptyArray` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.isEmptyArray
```

**Example**

```ts
import { isEmptyArray } from "effect/Array"

assert.deepStrictEqual(isEmptyArray([]), true)
assert.deepStrictEqual(isEmptyArray([1, 2, 3]), false)
```

**Signature**

```ts
export declare const isEmptyArray: <A>(self: Array<A>) => self is []
```
