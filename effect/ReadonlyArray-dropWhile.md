# dropWhile

Remove the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

To import and use `dropWhile` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Iterable<A>) => B[]
  <A>(predicate: Predicate<A>): <B extends A>(self: Iterable<B>) => B[]
  <A, B extends A>(self: Iterable<A>, refinement: Refinement<A, B>): B[]
  <B extends A, A>(self: Iterable<B>, predicate: Predicate<A>): B[]
}
```
