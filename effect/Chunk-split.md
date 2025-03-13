Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.split

Splits this chunk into `n` equally sized chunks.

**Signature**

```ts
declare const split: { (n: number): <A>(self: Chunk<A>) => Chunk<Chunk<A>>; <A>(self: Chunk<A>, n: number): Chunk<Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1080)

Since v2.0.0