Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeBetween

Takes a number of elements from the queue between the specified minimum and
maximum. If there are fewer than the minimum number of elements available,
suspends until at least the minimum number of elements have been collected.

**Signature**

```ts
declare const takeBetween: { (min: number, max: number): <A>(self: Dequeue<A>) => Effect.Effect<Chunk.Chunk<A>>; <A>(self: Dequeue<A>, min: number, max: number): Effect.Effect<Chunk.Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L628)

Since v2.0.0