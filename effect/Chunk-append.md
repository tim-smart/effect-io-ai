## append

Appends the specified element to the end of the `Chunk`.

**Signature**

```ts
declare const append: { <A2>(a: A2): <A>(self: Chunk<A>) => NonEmptyChunk<A2 | A>; <A, A2>(self: Chunk<A>, a: A2): NonEmptyChunk<A | A2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L442)

Since v2.0.0