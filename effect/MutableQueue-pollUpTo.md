## pollUpTo

Dequeues up to `n` elements from the queue.

Returns a `List` of up to `n` elements.

**Signature**

```ts
declare const pollUpTo: { (n: number): <A>(self: MutableQueue<A>) => Chunk.Chunk<A>; <A>(self: MutableQueue<A>, n: number): Chunk.Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableQueue.ts#L209)

Since v2.0.0