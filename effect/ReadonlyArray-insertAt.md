# insertAt

Insert an element at the specified index, creating a new `NonEmptyArray`,
or return `None` if the index is out of bounds.

To import and use `insertAt` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.insertAt
```

**Signature**

```ts
export declare const insertAt: {
  <B>(i: number, b: B): <A>(self: Iterable<A>) => Option<[B | A, ...(B | A)[]]>
  <A, B>(self: Iterable<A>, i: number, b: B): Option<[A | B, ...(A | B)[]]>
}
```
