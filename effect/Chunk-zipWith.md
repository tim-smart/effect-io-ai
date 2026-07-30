Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.zipWith

Zips this chunk pointwise with the specified chunk using the specified combiner.

**Signature**

```ts
declare const zipWith: { <A, B, C>(that: Chunk<B>, f: (a: A, b: B) => C): (self: Chunk<A>) => Chunk<C>; <A, B, C>(self: Chunk<A>, that: Chunk<B>, f: (a: A, b: B) => C): Chunk<C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1208)

Since v2.0.0