# splitNonEmptyAt

Splits a `NonEmptyReadonlyArray` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` must be `>= 1`.

To import and use `splitNonEmptyAt` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.splitNonEmptyAt
```

**Example**

```ts
import { Array } from "effect"

const result = Array.splitNonEmptyAt(["a", "b", "c", "d", "e"], 3)
assert.deepStrictEqual(result, [
  ["a", "b", "c"],
  ["d", "e"]
])
```

**Signature**

```ts
export declare const splitNonEmptyAt: {
  (n: number): <A>(self: readonly [A, ...A[]]) => [beforeIndex: [A, ...A[]], fromIndex: A[]]
  <A>(self: readonly [A, ...A[]], n: number): [beforeIndex: [A, ...A[]], fromIndex: A[]]
}
```
