# every

Check if a predicate holds true for every `ReadonlyArray` element.

To import and use `every` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.every
```

**Signature**

```ts
export declare const every: {
  <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: readonly A[]) => self is readonly B[]
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: readonly A[]) => boolean
  <A, B extends A>(self: readonly A[], refinement: (a: A, i: number) => a is B): self is readonly B[]
  <A>(self: readonly A[], predicate: (a: A, i: number) => boolean): boolean
}
```
