Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeUpTo

Takes up to max number of values from the queue.

**Signature**

```ts
declare const takeUpTo: { (max: number): <A>(self: Dequeue<A>) => Effect.Effect<Chunk.Chunk<A>>; <A>(self: Dequeue<A>, max: number): Effect.Effect<Chunk.Chunk<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L615)

Since v2.0.0