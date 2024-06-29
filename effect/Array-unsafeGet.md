# unsafeGet

Gets an element unsafely, will throw on out of bounds.

To import and use `unsafeGet` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.unsafeGet
```

**Signature**

```ts
export declare const unsafeGet: {
  (index: number): <A>(self: readonly A[]) => A
  <A>(self: readonly A[], index: number): A
}
```
