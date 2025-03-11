## size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

**Signature**

```ts
declare const size: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L491)

Since v2.0.0