## replace

Change the element at the specified index, creating a new `Chunk`,
or returning the input if the index is out of bounds.

**Signature**

```ts
declare const replace: { <B>(i: number, b: B): <A>(self: Chunk<A>) => Chunk<B | A>; <A, B>(self: Chunk<A>, i: number, b: B): Chunk<B | A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1274)

Since v2.0.0