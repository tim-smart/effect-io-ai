# setNonEmptyLast

Change the last element, creating a new `NonEmptyReadonlyArray`.

To import and use `setNonEmptyLast` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.setNonEmptyLast
```

**Signature**

```ts
export declare const setNonEmptyLast: {
  <B>(b: B): <A>(self: readonly [A, ...A[]]) => [B | A, ...(B | A)[]]
  <A, B>(self: readonly [A, ...A[]], b: B): [A | B, ...(A | B)[]]
}
```
