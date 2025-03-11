## takeWhile

Takes all elements so long as the predicate returns true.

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Chunk<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1140)

Since v2.0.0