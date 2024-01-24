# partition

Separate elements based on a predicate that also exposes the index of the element.

To import and use `partition` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.partition
```

**Signature**

```ts
export declare const partition: {
  <A, B extends A>(
    refinement: (a: NoInfer<A>, i: number) => a is B
  ): (self: Iterable<A>) => [excluded: Exclude<A, B>[], satisfying: B[]]
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [excluded: A[], satisfying: A[]]
  <A, B extends A>(
    self: Iterable<A>,
    refinement: (a: A, i: number) => a is B
  ): [excluded: Exclude<A, B>[], satisfying: B[]]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [excluded: A[], satisfying: A[]]
}
```
