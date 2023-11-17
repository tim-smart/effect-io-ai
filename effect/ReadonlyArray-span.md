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
  <A, B extends A>(refinement: Refinement<A, B>): (self: Iterable<A>) => [init: B[], rest: A[]]
  <A>(predicate: Predicate<A>): <B extends A>(self: Iterable<B>) => [init: B[], rest: B[]]
  <A, B extends A>(self: Iterable<A>, refinement: Refinement<A, B>): [init: B[], rest: A[]]
  <B extends A, A>(self: Iterable<B>, predicate: Predicate<A>): [init: B[], rest: B[]]
}
```
