# every

Check if a predicate holds true for every `ReadonlyArray` element.

To import and use `every` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.every
```

**Signature**

```ts
export declare const every: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: readonly A[]) => self is readonly B[]
  <A>(predicate: Predicate<A>): (self: readonly A[]) => boolean
  <A, B extends A>(self: readonly A[], refinement: Refinement<A, B>): self is readonly B[]
  <A>(self: readonly A[], predicate: Predicate<A>): boolean
}
```
