## prepend

Prepend an element to the front of a `Chunk`, creating a new `NonEmptyChunk`.

**Signature**

```ts
declare const prepend: { <B>(elem: B): <A>(self: Chunk<A>) => NonEmptyChunk<B | A>; <A, B>(self: Chunk<A>, elem: B): NonEmptyChunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L453)

Since v2.0.0