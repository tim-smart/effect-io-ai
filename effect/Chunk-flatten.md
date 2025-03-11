## flatten

Flattens a chunk of chunks into a single chunk by concatenating all chunks.

**Signature**

```ts
declare const flatten: <S extends Chunk<Chunk<any>>>(self: S) => Chunk.Flatten<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L767)

Since v2.0.0