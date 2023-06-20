# unsafeGet

Gets an element unsafely, will throw on out of bounds.

To import and use `unsafeGet` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.unsafeGet
```

**Signature**

```ts
export declare const unsafeGet: {
  (index: number): <A>(self: readonly A[]) => A
  <A>(self: readonly A[], index: number): A
}
```
