Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.every

Check if a predicate holds true for every `HashSet` element.

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: HashSet<A>) => self is HashSet<B>; <A>(predicate: Predicate<A>): (self: HashSet<A>) => boolean; <A, B extends A>(self: HashSet<A>, refinement: Refinement<A, B>): self is HashSet<B>; <A>(self: HashSet<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L89)

Since v2.0.0