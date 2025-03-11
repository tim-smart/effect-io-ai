## intersection

Creates a Chunk of unique values that are included in all given Chunks.

The order and references of result values are determined by the Chunk.

**Signature**

```ts
declare const intersection: { <A>(that: Chunk<A>): <B>(self: Chunk<B>) => Chunk<A & B>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A & B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L802)

Since v2.0.0