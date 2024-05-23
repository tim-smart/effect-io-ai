# setNonEmptyHead

Change the head, creating a new `NonEmptyReadonlyArray`.

To import and use `setNonEmptyHead` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.setNonEmptyHead
```

**Example**

```ts
import { Array } from "effect"

const result = Array.setNonEmptyHead([1, 2, 3], 10)
assert.deepStrictEqual(result, [10, 2, 3])
```

**Signature**

```ts
export declare const setNonEmptyHead: {
  <B>(b: B): <A>(self: readonly [A, ...A[]]) => [B | A, ...(B | A)[]]
  <A, B>(self: readonly [A, ...A[]], b: B): [A | B, ...(A | B)[]]
}
```
