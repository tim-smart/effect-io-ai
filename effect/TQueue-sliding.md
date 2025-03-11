## sliding

Creates a bounded queue with the sliding strategy. The queue will add new
values and drop old values if the queue is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const sliding: <A>(requestedCapacity: number) => STM.STM<TQueue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L369)

Since v2.0.0