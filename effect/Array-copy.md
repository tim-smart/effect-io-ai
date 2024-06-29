# copy

Copies an array.

To import and use `copy` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.copy
```

**Example**

```ts
import { Array } from "effect"

const numbers = [1, 2, 3]
const copy = Array.copy(numbers)
assert.deepStrictEqual(copy, [1, 2, 3])
```

**Signature**

```ts
export declare const copy: { <A>(self: readonly [A, ...A[]]): [A, ...A[]]; <A>(self: readonly A[]): A[] }
```
