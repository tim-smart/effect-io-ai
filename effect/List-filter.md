## filter

Filters a list using the specified predicate.

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: List<A>) => List<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: List<A>) => List<A>; <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): List<B>; <A>(self: List<A>, predicate: Predicate<A>): List<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L492)

Since v2.0.0