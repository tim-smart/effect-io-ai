# cartesianWith

Zips this chunk crosswise with the specified chunk using the specified combiner.

To import and use `cartesianWith` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.cartesianWith
```

**Signature**

```ts
export declare const cartesianWith: {
  <A, B, C>(that: readonly B[], f: (a: A, b: B) => C): (self: readonly A[]) => C[]
  <A, B, C>(self: readonly A[], that: readonly B[], f: (a: A, b: B) => C): C[]
}
```
