# insertAt

Insert an element at the specified index, creating a new `NonEmptyArray`,
or return `None` if the index is out of bounds.

To import and use `insertAt` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.insertAt
```

**Signature**

```ts
export declare const insertAt: {
  <B>(i: number, b: B): <A>(self: Iterable<A>) => Option<[B | A, ...(B | A)[]]>
  <A, B>(self: Iterable<A>, i: number, b: B): Option<[A | B, ...(A | B)[]]>
}
```
