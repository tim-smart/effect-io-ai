# range

Return a `NonEmptyArray` containing a range of integers, including both endpoints.

To import and use `range` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.range
```

**Example**

```ts
import { range } from 'effect/ReadonlyArray'

assert.deepStrictEqual(range(1, 3), [1, 2, 3])
```

**Signature**

```ts
export declare const range: (start: number, end: number) => [number, ...number[]]
```
