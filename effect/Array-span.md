# span

Split an `Iterable` into two parts:

1. the longest initial subarray for which all elements satisfy the specified predicate
2. the remaining elements

To import and use `span` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.span
```

**Signature**

```ts
export declare const span: {
  <A, B extends A>(
    refinement: (a: NoInfer<A>, i: number) => a is B
  ): (self: Iterable<A>) => [init: B[], rest: Exclude<A, B>[]]
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [init: A[], rest: A[]]
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): [init: B[], rest: Exclude<A, B>[]]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [init: A[], rest: A[]]
}
```
