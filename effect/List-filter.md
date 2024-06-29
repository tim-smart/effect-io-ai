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
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: List<A>) => List<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: List<A>) => List<A>
  <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): List<B>
  <A>(self: List<A>, predicate: Predicate<A>): List<A>
}
```
