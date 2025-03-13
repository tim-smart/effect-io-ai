Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findLast

Find the last element for which a predicate holds.

**Signature**

```ts
declare const findLast: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Option<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1368)

Since v2.0.0