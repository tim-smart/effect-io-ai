Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.partition

Partition the values of a `HashSet` using the specified predicate.

If a value matches the predicate, it will be placed into the `HashSet` on the
right side of the resulting `Tuple`, otherwise the value will be placed into
the left side.

**Signature**

```ts
declare const partition: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => [excluded: HashSet<Exclude<A, B>>, satisfying: HashSet<B>]; <A>(predicate: Predicate<NoInfer<A>>): (self: HashSet<A>) => [excluded: HashSet<A>, satisfying: HashSet<A>]; <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): [excluded: HashSet<Exclude<A, B>>, satisfying: HashSet<B>]; <A>(self: HashSet<A>, predicate: Predicate<A>): [excluded: HashSet<A>, satisfying: HashSet<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L299)

Since v2.0.0