# unzip

This function is the inverse of `zip`. Takes an `Iterable` of pairs and return two corresponding `Array`s.

To import and use `unzip` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.unzip
```

**Example**

```ts
import { Array } from "effect"

const result = Array.unzip([
  [1, "a"],
  [2, "b"],
  [3, "c"]
])
assert.deepStrictEqual(result, [
  [1, 2, 3],
  ["a", "b", "c"]
])
```

**Signature**

```ts
export declare const unzip: <
  S extends Iterable<readonly [any, any]> | readonly [readonly [any, any], ...(readonly [any, any])[]]
>(
  self: S
) => S extends readonly [readonly [infer A, infer B], ...(readonly [infer A, infer B])[]]
  ? [[A, ...A[]], [B, ...B[]]]
  : S extends Iterable<readonly [infer A, infer B]>
    ? [A[], B[]]
    : never
```
