# prepend

Prepend an element to the front of an `Iterable`, creating a new `NonEmptyArray`.

To import and use `prepend` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(head: B): <A>(self: Iterable<A>) => [B | A, ...(B | A)[]]
  <A, B>(self: Iterable<A>, head: B): [A | B, ...(A | B)[]]
}
```
