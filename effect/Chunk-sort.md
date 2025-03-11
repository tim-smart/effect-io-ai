## sort

Sort the elements of a Chunk in increasing order, creating a new Chunk.

**Signature**

```ts
declare const sort: { <B>(O: Order.Order<B>): <A extends B>(self: Chunk<A>) => Chunk<A>; <A extends B, B>(self: Chunk<A>, O: Order.Order<B>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1026)

Since v2.0.0