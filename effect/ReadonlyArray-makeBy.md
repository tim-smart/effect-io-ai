# makeBy

Return a `NonEmptyArray` of length `n` with element `i` initialized with `f(i)`.

**Note**. `n` is normalized to an integer >= 1.

To import and use `makeBy` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.makeBy
```

**Example**

```ts
import { makeBy } from "effect/ReadonlyArray"

assert.deepStrictEqual(
  makeBy(5, (n) => n * 2),
  [0, 2, 4, 6, 8]
)
```

**Signature**

```ts
export declare const makeBy: <A>(n: number, f: (i: number) => A) => [A, ...A[]]
```
