# makeBy

Return a `NonEmptyArray` of length `n` with element `i` initialized with `f(i)`.

**Note**. `n` is normalized to an integer >= 1.

To import and use `makeBy` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.makeBy
```

**Example**

```ts
import { makeBy } from "effect/Array"

assert.deepStrictEqual(
  makeBy(5, (n) => n * 2),
  [0, 2, 4, 6, 8]
)
```

**Signature**

```ts
export declare const makeBy: <A>(n: number, f: (i: number) => A) => NonEmptyArray<A>
```
