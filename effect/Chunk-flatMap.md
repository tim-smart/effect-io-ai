Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.flatMap

Applies a function to each element in a chunk and returns a new chunk containing the concatenated mapped elements.

**Signature**

```ts
declare const flatMap: { <S extends Chunk<any>, T extends Chunk<any>>(f: (a: Chunk.Infer<S>, i: number) => T): (self: S) => Chunk.AndNonEmpty<S, T, Chunk.Infer<T>>; <A, B>(self: NonEmptyChunk<A>, f: (a: A, i: number) => NonEmptyChunk<B>): NonEmptyChunk<B>; <A, B>(self: Chunk<A>, f: (a: A, i: number) => Chunk<B>): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L727)

Since v2.0.0