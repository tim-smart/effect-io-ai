Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.chunksOf

Groups elements in chunks of up to `n` elements.

**Signature**

```ts
declare const chunksOf: { (n: number): <A>(self: Chunk<A>) => Chunk<Chunk<A>>; <A>(self: Chunk<A>, n: number): Chunk<Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L777)

Since v2.0.0