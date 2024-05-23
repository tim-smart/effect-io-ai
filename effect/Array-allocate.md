# allocate

Creates a new `Array` of the specified length.

To import and use `allocate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.allocate
```

**Example**

```ts
import { Array } from "effect"

const result = Array.allocate<number>(3)
assert.deepStrictEqual(result.length, 3)
```

**Signature**

```ts
export declare const allocate: <A = never>(n: number) => (A | undefined)[]
```
