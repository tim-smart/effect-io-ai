Package: `effect`<br />
Module: `Queue`<br />

## Queue.takeAll

Takes all the values in the queue and returns the values. If the queue is
empty returns an empty collection.

**Signature**

```ts
declare const takeAll: <A>(self: Dequeue<A>) => Effect.Effect<Chunk.Chunk<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L607)

Since v2.0.0