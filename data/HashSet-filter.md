# filter

Filters values out of a `HashSet` using the specified predicate.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(f: Refinement<A, B>): (self: HashSet<A>) => HashSet<B>
  <A>(f: Predicate<A>): (self: HashSet<A>) => HashSet<A>
  <A, B extends A>(self: HashSet<A>, f: Refinement<A, B>): HashSet<B>
  <A>(self: HashSet<A>, f: Predicate<A>): HashSet<A>
}
```
