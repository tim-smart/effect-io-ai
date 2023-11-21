# findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

To import and use `findFirst` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Iterable<A>) => Option<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: Iterable<B>) => Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: Refinement<A, B>): Option<B>
  <A>(self: Iterable<A>, predicate: Predicate<A>): Option<A>
}
```
