Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.filterMapWhile

Transforms all elements of the chunk for as long as the specified function returns some value

**Signature**

```ts
declare const filterMapWhile: { <A, B>(f: (a: A) => Option<B>): (self: Chunk<A>) => Chunk<B>; <A, B>(self: Chunk<A>, f: (a: A) => Option<B>): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L706)

Since v2.0.0