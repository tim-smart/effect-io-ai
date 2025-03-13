Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.mapAccum

Statefully maps over the chunk, producing new elements of type `B`.

**Signature**

```ts
declare const mapAccum: { <S, A, B>(s: S, f: (s: S, a: A) => readonly [S, B]): (self: Chunk<A>) => [S, Chunk<B>]; <S, A, B>(self: Chunk<A>, s: S, f: (s: S, a: A) => readonly [S, B]): [S, Chunk<B>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L950)

Since v2.0.0