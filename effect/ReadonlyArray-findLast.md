# findLast

Find the last element for which a predicate holds.

To import and use `findLast` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.findLast
```

**Signature**

```ts
export declare const findLast: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Iterable<A>) => Option<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: Iterable<B>) => Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Iterable<A>, predicate: Predicate<A>): Option<A>
}
```
