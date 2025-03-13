Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.every

Check if a predicate holds true for every `Chunk` element.

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => self is Chunk<B>; <A>(predicate: Predicate<A>): (self: Chunk<A>) => boolean; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): self is Chunk<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1392)

Since v2.0.0