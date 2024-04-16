# modifyNonEmptyLast

Apply a function to the last element, creating a new `NonEmptyReadonlyArray`.

To import and use `modifyNonEmptyLast` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.modifyNonEmptyLast
```

**Signature**

```ts
export declare const modifyNonEmptyLast: {
  <A, B>(f: (a: A) => B): (self: readonly [A, ...A[]]) => [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], f: (a: A) => B): [A | B, ...(A | B)[]]
}
```
