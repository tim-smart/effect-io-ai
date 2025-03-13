Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.partition

Separate elements based on a predicate that also exposes the index of the element.

**Signature**

```ts
declare const partition: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Chunk<A>) => [excluded: Chunk<Exclude<A, B>>, satisfying: Chunk<B>]; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Chunk<A>) => [excluded: Chunk<A>, satisfying: Chunk<A>]; <A, B extends A>(self: Chunk<A>, refinement: (a: A, i: number) => a is B): [excluded: Chunk<Exclude<A, B>>, satisfying: Chunk<B>]; <A>(self: Chunk<A>, predicate: (a: A, i: number) => boolean): [excluded: Chunk<A>, satisfying: Chunk<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L964)

Since v2.0.0