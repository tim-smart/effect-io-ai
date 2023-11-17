# setNonEmptyHead

Change the head, creating a new `NonEmptyReadonlyArray`.

To import and use `setNonEmptyHead` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.setNonEmptyHead
```

**Signature**

```ts
export declare const setNonEmptyHead: {
  <B>(b: B): <A>(self: readonly [A, ...A[]]) => [B | A, ...(B | A)[]]
  <A, B>(self: readonly [A, ...A[]], b: B): [A | B, ...(A | B)[]]
}
```
