# modifyNonEmptyHead

Apply a function to the head, creating a new `NonEmptyReadonlyArray`.

To import and use `modifyNonEmptyHead` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.modifyNonEmptyHead
```

**Signature**

```ts
export declare const modifyNonEmptyHead: {
  <A, B>(f: (a: A) => B): (self: readonly [A, ...A[]]) => [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], f: (a: A) => B): [A | B, ...(A | B)[]]
}
```
