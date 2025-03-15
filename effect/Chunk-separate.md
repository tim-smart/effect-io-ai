Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.separate

Partitions the elements of this chunk into two chunks.

**Signature**

```ts
declare const separate: <A, B>(self: Chunk<Either<B, A>>) => [Chunk<A>, Chunk<B>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1008)

Since v2.0.0