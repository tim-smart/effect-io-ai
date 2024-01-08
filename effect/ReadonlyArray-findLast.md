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
  <A, B>(f: (a: A, i: number) => Option<B>): (self: Iterable<A>) => Option<B>
  <A, B extends A>(refinement: (a: A, i: number) => a is B): (self: Iterable<A>) => Option<B>
  <B extends A, A = B>(predicate: (a: A, i: number) => boolean): (self: Iterable<B>) => Option<B>
  <A, B>(self: Iterable<A>, f: (a: A, i: number) => Option<B>): Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Option<B>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<A>
}
```
