Package: `effect`<br />
Module: `List`<br />

## List.partition

Partition a list into two lists, where the first list contains all elements
that did not satisfy the specified predicate, and the second list contains
all elements that did satisfy the specified predicate.

**Signature**

```ts
declare const partition: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: List<A>) => [excluded: List<Exclude<A, B>>, satisfying: List<B>]; <A>(predicate: Predicate<NoInfer<A>>): (self: List<A>) => [excluded: List<A>, satisfying: List<A>]; <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): [excluded: List<Exclude<A, B>>, satisfying: List<B>]; <A>(self: List<A>, predicate: Predicate<A>): [excluded: List<A>, satisfying: List<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L778)

Since v2.0.0