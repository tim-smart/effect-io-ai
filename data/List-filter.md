# filter

Filters a list using the specified predicate.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const filter: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: List<A>) => List<B>
  <A>(predicate: Predicate<A>): (self: List<A>) => List<A>
  <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): List<B>
  <A>(self: List<A>, predicate: Predicate<A>): List<A>
}
```
