Package: `effect`<br />
Module: `Queue`<br />

## Queue.take

Takes the oldest value in the queue. If the queue is empty, this will return
a computation that resumes when an item has been added to the queue.

**Signature**

```ts
declare const take: <A>(self: Dequeue<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L598)

Since v2.0.0