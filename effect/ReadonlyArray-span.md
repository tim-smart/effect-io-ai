# span

Split an `Iterable` into two parts:

1. the longest initial subarray for which all elements satisfy the specified predicate
2. the remaining elements

To import and use `span` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.span
```

**Signature**

```ts
export declare const span: {
  <C extends A, B extends A, A = C>(
    refinement: (a: A, i: number) => a is B
  ): (self: Iterable<C>) => [init: B[], rest: Exclude<C, B>[]]
  <B extends A, A = B>(predicate: (a: A, i: number) => boolean): (self: Iterable<B>) => [init: B[], rest: B[]]
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): [init: B[], rest: Exclude<A, B>[]]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [init: A[], rest: A[]]
}
```
