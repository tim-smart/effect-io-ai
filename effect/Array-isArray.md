# isArray

Determine if `unknown` is an Array.

To import and use `isArray` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.isArray
```

**Example**

```ts
import { isArray } from "effect/Array"

assert.deepStrictEqual(isArray(null), false)
assert.deepStrictEqual(isArray([1, 2, 3]), true)
```

**Signature**

```ts
export declare const isArray: (self: unknown) => self is unknown[]
```
