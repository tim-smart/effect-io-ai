## offerAll

Enqueues a collection of values into the queue.

Returns a `Chunk` of the values that were **not** able to be enqueued.

**Signature**

```ts
declare const offerAll: { <A>(values: Iterable<A>): (self: MutableQueue<A>) => Chunk.Chunk<A>; <A>(self: MutableQueue<A>, values: Iterable<A>): Chunk.Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableQueue.ts#L158)

Since v2.0.0