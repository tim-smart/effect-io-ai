# cartesian

Zips this chunk crosswise with the specified chunk.

To import and use `cartesian` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.cartesian
```

**Signature**

```ts
export declare const cartesian: {
  <B>(that: readonly B[]): <A>(self: readonly A[]) => [A, B][]
  <A, B>(self: readonly A[], that: readonly B[]): [A, B][]
}
```
