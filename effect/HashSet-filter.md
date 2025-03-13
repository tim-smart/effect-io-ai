Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.filter

Filters values out of a `HashSet` using the specified predicate.

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => HashSet<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: HashSet<A>) => HashSet<A>; <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): HashSet<B>; <A>(self: HashSet<A>, predicate: Predicate<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L282)

Since v2.0.0