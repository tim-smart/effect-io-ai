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
  <A, B extends A>(f: Refinement<A, B>): (self: HashSet<A>) => HashSet<B>
  <A>(f: Predicate<A>): (self: HashSet<A>) => HashSet<A>
  <A, B extends A>(self: HashSet<A>, f: Refinement<A, B>): HashSet<B>
  <A>(self: HashSet<A>, f: Predicate<A>): HashSet<A>
}
```
