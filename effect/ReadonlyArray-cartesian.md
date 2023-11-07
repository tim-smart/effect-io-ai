# cartesian

Zips this chunk crosswise with the specified chunk.

To import and use `cartesian` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.cartesian
```

**Signature**

```ts
export declare const cartesian: {
  <B>(that: readonly B[]): <A>(self: readonly A[]) => [A, B][]
  <A, B>(self: readonly A[], that: readonly B[]): [A, B][]
}
```
