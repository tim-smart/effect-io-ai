# modifyNonEmptyLast

Apply a function to the last element, creating a new `NonEmptyReadonlyArray`.

To import and use `modifyNonEmptyLast` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.modifyNonEmptyLast
```

**Signature**

```ts
export declare const modifyNonEmptyLast: {
  <A, B>(f: (a: A) => B): (self: readonly [A, ...A[]]) => [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], f: (a: A) => B): [A | B, ...(A | B)[]]
}
```
