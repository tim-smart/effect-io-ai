# filter

Filters a list using the specified predicate.

To import and use `filter` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.filter
```

**Signature**

```ts
export declare const filter: {
  <C extends A, B extends A, A = C>(refinement: Refinement<A, B>): (self: List<C>) => List<B>
  <B extends A, A = B>(predicate: Predicate<A>): (self: List<B>) => List<B>
  <C extends A, B extends A, A = C>(self: List<C>, refinement: Refinement<A, B>): List<B>
  <B extends A, A = B>(self: List<B>, predicate: Predicate<A>): List<B>
}
```
