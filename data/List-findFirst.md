# findFirst

Returns the first element of the specified list that satisfies the specified
predicate, or `None` if no such element exists.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const findFirst: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: List<A>) => Option.Option<B>
  <A>(predicate: Predicate<A>): (self: List<A>) => Option.Option<A>
  <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): Option.Option<B>
  <A>(self: List<A>, predicate: Predicate<A>): Option.Option<A>
}
```
