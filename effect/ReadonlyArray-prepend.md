# prepend

Prepend an element to the front of an `Iterable`, creating a new `NonEmptyArray`.

To import and use `prepend` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(head: B): <A>(self: Iterable<A>) => [B | A, ...(B | A)[]]
  <A, B>(self: Iterable<A>, head: B): [A | B, ...(A | B)[]]
}
```
