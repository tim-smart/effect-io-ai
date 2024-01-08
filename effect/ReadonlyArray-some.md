# some

Check if a predicate holds true for some `ReadonlyArray` element.

To import and use `some` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.some
```

**Signature**

```ts
export declare const some: {
  <B extends A, A = B>(predicate: (a: A, i: number) => boolean): (self: readonly B[]) => self is readonly [B, ...B[]]
  <A>(self: readonly A[], predicate: (a: A, i: number) => boolean): self is readonly [A, ...A[]]
}
```
