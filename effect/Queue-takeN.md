Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeN

Takes the specified number of elements from the queue. If there are fewer
than the specified number of elements available, it suspends until they
become available.

**Signature**

```ts
declare const takeN: { (n: number): <A>(self: Dequeue<A>) => Effect.Effect<Chunk.Chunk<A>>; <A>(self: Dequeue<A>, n: number): Effect.Effect<Chunk.Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L641)

Since v2.0.0