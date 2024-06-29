# headNonEmpty

Get the first element of a non empty array.

To import and use `headNonEmpty` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.headNonEmpty
```

**Example**

```ts
import { Array } from "effect"

const result = Array.headNonEmpty([1, 2, 3, 4])
assert.deepStrictEqual(result, 1)
```

**Signature**

```ts
export declare const headNonEmpty: <A>(self: readonly [A, ...A[]]) => A
```
