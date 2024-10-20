# range

Return a `NonEmptyArray` containing a range of integers, including both endpoints.

To import and use `range` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.range
```

**Example**

```ts
import { range } from "effect/Array"

assert.deepStrictEqual(range(1, 3), [1, 2, 3])
```

**Signature**

```ts
export declare const range: (start: number, end: number) => NonEmptyArray<number>
```
