# setNonEmptyLast

Change the last element, creating a new `NonEmptyReadonlyArray`.

To import and use `setNonEmptyLast` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.setNonEmptyLast
```

**Example**

```ts
import { Array } from "effect"

const result = Array.setNonEmptyLast([1, 2, 3], 4)
assert.deepStrictEqual(result, [1, 2, 4])
```

**Signature**

```ts
export declare const setNonEmptyLast: {
  <B>(b: B): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>
  <A, B>(self: NonEmptyReadonlyArray<A>, b: B): NonEmptyArray<A | B>
}
```
