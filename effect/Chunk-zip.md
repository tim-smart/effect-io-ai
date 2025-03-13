Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.zip

Zips this chunk pointwise with the specified chunk.

**Signature**

```ts
declare const zip: { <B>(that: Chunk<B>): <A>(self: Chunk<A>) => Chunk<[A, B]>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1221)

Since v2.0.0