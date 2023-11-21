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
  <C extends A, B extends A, A = C>(
    refinement: (a: A, i: number) => a is B
  ): (self: Iterable<C>) => [excluded: Exclude<C, B>[], satisfying: B[]]
  <B extends A, A = B>(predicate: (a: A, i: number) => boolean): (self: Iterable<B>) => [excluded: B[], satisfying: B[]]
  <A, B extends A>(
    self: Iterable<A>,
    refinement: (a: A, i: number) => a is B
  ): [excluded: Exclude<A, B>[], satisfying: B[]]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [excluded: A[], satisfying: A[]]
}
```
