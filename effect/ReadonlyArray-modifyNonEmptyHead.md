# modifyNonEmptyHead

Apply a function to the head, creating a new `NonEmptyReadonlyArray`.

To import and use `modifyNonEmptyHead` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.modifyNonEmptyHead
```

**Signature**

```ts
export declare const modifyNonEmptyHead: {
  <A, B>(f: (a: A) => B): (self: readonly [A, ...A[]]) => [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], f: (a: A) => B): [A | B, ...(A | B)[]]
}
```
