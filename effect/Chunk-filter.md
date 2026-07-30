Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.filter

Returns a filtered and mapped subset of the elements.

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Chunk<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Chunk<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L692)

Since v2.0.0