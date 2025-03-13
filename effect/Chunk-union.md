Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.union

Creates a Chunks of unique values, in order, from all given Chunks.

**Signature**

```ts
declare const union: { <A>(that: Chunk<A>): <B>(self: Chunk<B>) => Chunk<A | B>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1163)

Since v2.0.0