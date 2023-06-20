# findFirst

Find the first element for which a predicate holds.

To import and use `findFirst` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: Iterable<A>) => Option<B>
  <A>(predicate: Predicate<A>): <B extends A>(self: Iterable<B>) => Option<B>
  <A, B extends A>(self: Iterable<A>, refinement: Refinement<A, B>): Option<B>
  <B extends A, A>(self: Iterable<B>, predicate: Predicate<A>): Option<B>
}
```
