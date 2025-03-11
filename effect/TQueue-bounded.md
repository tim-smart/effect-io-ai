## bounded

Creates a bounded queue with the back pressure strategy. The queue will
retain values until they have been taken, applying back pressure to
offerors if the queue is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const bounded: <A>(requestedCapacity: number) => STM.STM<TQueue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L221)

Since v2.0.0