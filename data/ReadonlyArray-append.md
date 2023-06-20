# append

Append an element to the end of an `Iterable`, creating a new `NonEmptyArray`.

To import and use `append` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.append
```

**Signature**

```ts
export declare const append: {
  <B>(last: B): <A>(self: Iterable<A>) => [B | A, ...(B | A)[]]
  <A, B>(self: Iterable<A>, last: B): [A | B, ...(A | B)[]]
}
```
