Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.splitNonEmptyAt

Splits a `NonEmptyChunk` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` must be `>= 1`.

**Signature**

```ts
declare const splitNonEmptyAt: { (n: number): <A>(self: NonEmptyChunk<A>) => [beforeIndex: NonEmptyChunk<A>, fromIndex: Chunk<A>]; <A>(self: NonEmptyChunk<A>, n: number): [beforeIndex: NonEmptyChunk<A>, fromIndex: Chunk<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1066)

Since v2.0.0