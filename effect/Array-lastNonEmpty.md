# lastNonEmpty

Get the last element of a non empty array.

To import and use `lastNonEmpty` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.lastNonEmpty
```

**Example**

```ts
import { Array } from "effect"

const result = Array.lastNonEmpty([1, 2, 3, 4])
assert.deepStrictEqual(result, 4)
```

**Signature**

```ts
export declare const lastNonEmpty: <A>(self: readonly [A, ...A[]]) => A
```
