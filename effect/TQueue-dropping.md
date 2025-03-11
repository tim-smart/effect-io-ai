## dropping

Creates a bounded queue with the dropping strategy. The queue will drop new
values if the queue is at capacity.

For best performance use capacities that are powers of two.

**Signature**

```ts
declare const dropping: <A>(requestedCapacity: number) => STM.STM<TQueue<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L240)

Since v2.0.0