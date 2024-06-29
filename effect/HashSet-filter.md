# filter

Filters values out of a `HashSet` using the specified predicate.

To import and use `filter` from the "HashSet" module:

```ts
import * as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.filter
```

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => HashSet<B>
  <A>(predicate: Predicate<NoInfer<A>>): (self: HashSet<A>) => HashSet<A>
  <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): HashSet<B>
  <A>(self: HashSet<A>, predicate: Predicate<A>): HashSet<A>
}
```
