Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.partitionMap

Partitions the elements of this chunk into two chunks using f.

**Signature**

```ts
declare const partitionMap: { <A, B, C>(f: (a: A) => Either<C, B>): (self: Chunk<A>) => [left: Chunk<B>, right: Chunk<C>]; <A, B, C>(self: Chunk<A>, f: (a: A) => Either<C, B>): [left: Chunk<B>, right: Chunk<C>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L991)

Since v2.0.0