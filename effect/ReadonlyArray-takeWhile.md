# takeWhile

Calculate the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

To import and use `takeWhile` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.takeWhile
```

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Iterable<A>) => B[]
  <B extends A, A = B>(predicate: Predicate<A>): (self: Iterable<B>) => B[]
  <A, B extends A>(self: Iterable<A>, refinement: Refinement<A, B>): B[]
  <A>(self: Iterable<A>, predicate: Predicate<A>): A[]
}
```
